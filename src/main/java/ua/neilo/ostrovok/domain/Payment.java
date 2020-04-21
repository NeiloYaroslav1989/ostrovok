package ua.neilo.ostrovok.domain;


import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class Payment implements Comparable<Payment>  {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;

    private int payment;

    private String year;

    private String month;

    @ManyToOne
    @JoinColumn(name = "client_id", nullable = false)
    private Client client;

    public int getNumberOfYear(String year) {
        return Integer.parseInt(year);
    }

    public int getNumberOfMonth(String month) {
        int numberOfMonth = 0;
        switch (month) {
            case "Январь":
                numberOfMonth = 1;
                break;
            case "Февраль":
                numberOfMonth = 2;
                break;
            case "Март":
                numberOfMonth = 3;
                break;
            case "Апрель":
                numberOfMonth = 4;
                break;
            case "Май":
                numberOfMonth = 5;
                break;
            case "Июнь":
                numberOfMonth = 6;
                break;
            case "Июль":
                numberOfMonth = 7;
                break;
            case "Август":
                numberOfMonth = 8;
                break;
            case "Сентябрь":
                numberOfMonth = 9;
                break;
            case "Октябрь":
                numberOfMonth = 10;
                break;
            case "Ноябрь":
                numberOfMonth = 11;
                break;
            case "Декабрь":
                numberOfMonth = 12;
                break;
        }
        return numberOfMonth;
    }

    @Override
    public int compareTo(Payment otherPayment) {
        int result = 0;

        if (this.getNumberOfYear(this.getYear()) == otherPayment.getNumberOfYear(otherPayment.getYear())) {
            result = Integer.compare(this.getNumberOfMonth(this.getMonth()),
                                        otherPayment.getNumberOfMonth(otherPayment.getMonth()));
        } else if (this.getNumberOfYear(this.getYear()) > otherPayment.getNumberOfYear(otherPayment.getYear())) {
            int resultMonth = Integer.compare(this.getNumberOfMonth(this.getMonth()),
                                                otherPayment.getNumberOfMonth(otherPayment.getMonth()));
            result = 1 + resultMonth;
        } else {
            int resultMonth = Integer.compare(this.getNumberOfMonth(this.getMonth()),
                                                otherPayment.getNumberOfMonth(otherPayment.getMonth()));
            result = 1 + resultMonth;
        }

        return result;
    }
}
