package bancos;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.EventQueue;
import java.awt.Toolkit;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;
import java.util.ArrayList;
import java.util.List;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import java.awt.CardLayout;

public class TelaInicial extends JFrame {

	private JPanel contentPane;
	int xx, xy;
	

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TelaInicial frame = new TelaInicial();
					frame.setUndecorated(true);
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public TelaInicial() {
		
		setIconImage(Toolkit.getDefaultToolkit().getImage(TelaInicial.class.getResource("/logo512.png")));
		setBackground(Color.WHITE);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 350);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		// contentPane.setBackground(new Color(44,123,191));
		contentPane.setBackground(Color.BLACK);
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(null);
		setContentPane(contentPane);

		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 168, 350);
		panel.setBackground(Color.BLACK);
		contentPane.add(panel);
		panel.setLayout(null);

		contentPane.addMouseListener(new MouseAdapter() {
			@Override
			public void mousePressed(MouseEvent e) {
				xx = e.getX();
				xy = e.getY();
			}
		});
		contentPane.addMouseMotionListener(new MouseMotionAdapter() {
			@Override
			public void mouseDragged(MouseEvent arg0) {
				int x = arg0.getXOnScreen();
				int y = arg0.getYOnScreen();
				TelaInicial.this.setLocation(x - xx, y - xy);
			}
		});

		JPanel linha = new JPanel();
		linha.setBounds(168, 35, 2, 275);
		linha.setBackground(Color.WHITE);
		contentPane.add(linha);
		linha.setLayout(null);

		JLabel logo = new JLabel("");
		logo.setIcon(new ImageIcon(TelaInicial.class.getResource("/logo32branca.png")));
		logo.setBounds(5, 50, 256, 256);
		panel.add(logo);

		Button cadastro = new Button("Criar conta");
		cadastro.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				final ImageIcon icone = new ImageIcon("/logo512.png");
				Object[] opcoes = { "Conta Poupança", "Conta Corrente", "Conta Especial" };
				String s = (String) JOptionPane.showInputDialog(null,
						"Escolha o tipo de conta que deseja abrir", "Abertura de Conta",
						JOptionPane.PLAIN_MESSAGE,icone , opcoes, "Conta Poupança");
				
			}
		});
		cadastro.setForeground(Color.WHITE);
		// cadastro.setBackground(new Color(217,41,56));
		cadastro.setBackground(Color.BLACK);
		cadastro.setFocusable(false);
		cadastro.setBounds(230, 75, 185, 36);
		contentPane.add(cadastro);

		Button acesso = new Button("Acessar conta");
		acesso.setForeground(Color.WHITE);
		acesso.setBackground(new Color(217, 41, 56));
		acesso.setBounds(230, 161, 185, 36);
		acesso.setBackground(Color.BLACK);
		acesso.setFocusable(false);
		contentPane.add(acesso);

		Button sair = new Button("Fechar sistema");
		sair.setForeground(Color.WHITE);
		sair.setBackground(new Color(217, 41, 56));
		sair.setBounds(230, 247, 185, 36);
		sair.setBackground(Color.BLACK);
		sair.setFocusable(false);
		contentPane.add(sair);
		sair.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent arg0) {
				Object[] opcoes = { "Sim", "Não" };
				if (JOptionPane.showOptionDialog(null, "Você realmente deseja fechar o sistema do Banco G6?",
						"Sair do sistema", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE, null, opcoes,
						opcoes[0]) == 0) {
					TelaInicial.this.dispose();
				}
			}
		});
	}

}
