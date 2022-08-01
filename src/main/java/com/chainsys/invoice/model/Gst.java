package com.chainsys.invoice.model;

import java.util.Scanner;

public class Gst {
	public static void main(String arg[]) {

		float amount;
		float gstrate;
		float gst;
		float total;

		System.out.println("enter the amount for GST calculation");
		Scanner n = new Scanner(System.in);
		amount = n.nextInt();

		System.out.println("enter the Gst rate for GST calculation");
		Scanner gr = new Scanner(System.in);
		gstrate = gr.nextInt();

		System.out.println("enter amount = " + amount + "  Gst Rate =  " + gstrate + "%");

		gst = (amount * gstrate) / 100;
		total = amount + gst;

		System.out.println("GST calculation");
		if (gstrate == 5) {
			System.out.println("GST calculation in 5% ");
			System.out.println("Total Gst " + gstrate + "% charge =" + gst);
			System.out.println("Total Amount =" + total);
		} else if (gstrate == 12) {
			System.out.println("GST calculation in 12% ");
			System.out.println("Total Gst " + gstrate + "% charge =" + gst);
			System.out.println("Total Amount =" + total);
		} else if (gstrate == 18) {
			System.out.println("GST calculation in 18% ");
			System.out.println("Total Gst " + gstrate + "% charge =" + gst);
			System.out.println("Total Amount =" + total);
		} else if (gstrate == 28) {
			System.out.println("GST calculation in 28% ");
			System.out.println("Total Gst " + gstrate + "% charge =" + gst);
			System.out.println("Total Amount =" + total);
		} else {
			System.out.println("as per indian rule gst calculate only 4 type 5%,12%,18%,28% ");
			System.out.println(" you type GST RATE " + gstrate);
		}

	}

}