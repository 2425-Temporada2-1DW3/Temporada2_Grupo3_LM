package ventanasReto;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.BorderLayout;
import javax.swing.JLabel;
import javax.swing.JComboBox;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JTable;

public class JornadasWindow extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField golLocal_1;
	private JTextField golVisitante_1;
	private JTextField golLocal_2;
	private JTextField golVisitante_2;
	private JTextField golLocal_3;
	private JTextField golVisitante_3;
	private JTable tablaClasificacion;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					JornadasWindow frame = new JornadasWindow();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public JornadasWindow() {
		setTitle("Gestion Jornadas - Txurdi Liga");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 757, 450);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(new BorderLayout(0, 0));
		
		JPanel panel = new JPanel();
		contentPane.add(panel, BorderLayout.NORTH);
		
		JLabel lblNewLabel = new JLabel("Gestion Jornadas");
		panel.add(lblNewLabel);
		
		JPanel panel_1 = new JPanel();
		contentPane.add(panel_1, BorderLayout.WEST);
		panel_1.setLayout(new BorderLayout(0, 0));
		
		JPanel panel_3 = new JPanel();
		panel_1.add(panel_3, BorderLayout.NORTH);
		
		JLabel lblNewLabel_1 = new JLabel("Temporada");
		panel_3.add(lblNewLabel_1);
		
		JComboBox comboBoxTemporada = new JComboBox();
		panel_3.add(comboBoxTemporada);
		
		JPanel panel_4 = new JPanel();
		panel_1.add(panel_4, BorderLayout.CENTER);
		panel_4.setLayout(new BorderLayout(0, 0));
		
		JPanel panel_5 = new JPanel();
		panel_4.add(panel_5, BorderLayout.NORTH);
		
		JLabel lblNewLabel_2 = new JLabel("Jornada");
		panel_5.add(lblNewLabel_2);
		
		JComboBox comboBoxJornada = new JComboBox();
		panel_5.add(comboBoxJornada);
		
		JPanel panel_6 = new JPanel();
		panel_4.add(panel_6, BorderLayout.CENTER);
		panel_6.setLayout(new BorderLayout(0, 0));
		
		JPanel panel_7 = new JPanel();
		panel_6.add(panel_7, BorderLayout.NORTH);
		
		JLabel lblLocal_1 = new JLabel("New label");
		panel_7.add(lblLocal_1);
		
		golLocal_1 = new JTextField();
		panel_7.add(golLocal_1);
		golLocal_1.setColumns(3);
		
		JLabel vs1 = new JLabel("VS");
		panel_7.add(vs1);
		
		golVisitante_1 = new JTextField();
		panel_7.add(golVisitante_1);
		golVisitante_1.setColumns(3);
		
		JLabel lblVisitante_1 = new JLabel("New label");
		panel_7.add(lblVisitante_1);
		
		JPanel panel_8 = new JPanel();
		panel_6.add(panel_8, BorderLayout.CENTER);
		panel_8.setLayout(new BorderLayout(0, 0));
		
		JPanel panel_9 = new JPanel();
		panel_8.add(panel_9, BorderLayout.NORTH);
		
		JLabel lblLocal_2 = new JLabel("New label");
		panel_9.add(lblLocal_2);
		
		golLocal_2 = new JTextField();
		golLocal_2.setColumns(3);
		panel_9.add(golLocal_2);
		
		JLabel vs2 = new JLabel("VS");
		panel_9.add(vs2);
		
		golVisitante_2 = new JTextField();
		golVisitante_2.setColumns(3);
		panel_9.add(golVisitante_2);
		
		JLabel lblVisitante_2 = new JLabel("New label");
		panel_9.add(lblVisitante_2);
		
		JPanel panel_10 = new JPanel();
		panel_8.add(panel_10, BorderLayout.CENTER);
		panel_10.setLayout(new BorderLayout(0, 0));
		
		JPanel panel_11 = new JPanel();
		panel_10.add(panel_11, BorderLayout.NORTH);
		
		JLabel lblLocal_3 = new JLabel("New label");
		panel_11.add(lblLocal_3);
		
		golLocal_3 = new JTextField();
		golLocal_3.setColumns(3);
		panel_11.add(golLocal_3);
		
		JLabel vs3 = new JLabel("VS");
		panel_11.add(vs3);
		
		golVisitante_3 = new JTextField();
		golVisitante_3.setColumns(3);
		panel_11.add(golVisitante_3);
		
		JLabel lblVisitante_3 = new JLabel("New label");
		panel_11.add(lblVisitante_3);
		
		JPanel panel_12 = new JPanel();
		panel_10.add(panel_12, BorderLayout.SOUTH);
		panel_12.setLayout(new BorderLayout(0, 0));
		
		JPanel panel_13 = new JPanel();
		panel_12.add(panel_13, BorderLayout.NORTH);
		
		JButton btnGuardar = new JButton("Guardar");
		panel_13.add(btnGuardar);
		
		JPanel panel_16 = new JPanel();
		panel_12.add(panel_16, BorderLayout.SOUTH);
		
		JLabel lblNewLabel_6 = new JLabel("Cerrar Sesion");
		panel_16.add(lblNewLabel_6);
		
		JLabel lblNewLabel_8 = new JLabel("Atras");
		panel_16.add(lblNewLabel_8);
		
		JPanel panel_2 = new JPanel();
		contentPane.add(panel_2, BorderLayout.CENTER);
		panel_2.setLayout(new BorderLayout(0, 0));
		
		JPanel panel_14 = new JPanel();
		panel_2.add(panel_14, BorderLayout.NORTH);
		
		JLabel lblNewLabel_7 = new JLabel("CLASIFICACION");
		panel_14.add(lblNewLabel_7);
		
		tablaClasificacion = new JTable();
		panel_2.add(tablaClasificacion, BorderLayout.CENTER);
	}

}
