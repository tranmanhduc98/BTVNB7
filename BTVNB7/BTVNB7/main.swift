//
//  main.swift
//  BTVNB7
//
//  Created by Trần Thanh Nguyên on 02/06/2021.
//

import Foundation



//MARK:- bài 1

/*

Tạo đối tượng có tên SoHoc gồm có các thuộc tính và phương thức sau:

+ Thuộc tính: number1, number2

+ Phương thức:

- Các hàm tạo không đối số, đầy đủ đối số

- printInfo(): dùng để hiển thị number1, number2

- addition(): dùng để cộng number1, number2

- subtract(): trừ number1 cho number2

- multi(): dùng để nhân number1, number2

- division(): dùng để chia number1 cho number2.
 */

class SoHoc {
    var number1 : Int = 0
    var number2 : Int = 0
    
    init (_ number1 : Int ,_ number2 : Int)
    {
        self.number1 = number1
        self.number2 = number2
    }
    
    func  printInfo(n1 : Int ,n2 : Int)
    {
        print("Number 1 : \(n1)")
        print("Number 2 : \(n2)")
    }
    func addition(n1 : Int ,n2 : Int)
    {
       var sum = n1 + n2
        print("tổng = \(sum)")
    }
    func subtract(n1 : Int ,n2 : Int)
    {
        var sub = n1 - n2
        print("hiệu là \(sub)")
    }
    func multi(n1 : Int ,n2 : Int)
    {
        var multi = n1 * n2
        print("tích là \(multi)")
    }
    func division(n1 : Int ,n2 : Int)
    {
        var div : Float = Float(n1) / Float(n2)
        print("thương là \(div)")
        
    }
}

func inputNumber() ->( n1: Int , n2 : Int)
{
    print("Nhập Number 1 :  ")
    var n1 = Int(readLine()!)!
    print("Nhập Number 2 :  ")
    var n2 = Int(readLine()!)!
    return (n1 , n2)
}
//var input = inputNumber()
//var number = SoHoc(input.n1,input.n2)
//number.printInfo(n1: input.n1, n2: input.n2)
//number.addition(n1: input.n1, n2: input.n2)
//number.subtract(n1: input.n1, n2: input.n2)
//number.division(n1: input.n1, n2: input.n2)
//number.multi(n1: input.n1, n2: input.n2)
//MARK: - bài 2
/*
 Viết class NhanVien gồm các thuộc tính:

 + Tên

 + Tuổi

 + Địa chỉ

 + Tiền lương (kiểu Double)

 + Tổng số giờ làm (kiểu Int)

 Constructor không tham số. Constructor đầy đủ tham số.

 Và các phương thức:

 - printInfo() : in ra tất cả các thông tin của nhân viên

 - tinhThuong(): Tính toán và trả về số tiền thưởng của nhân viên theo công thức sau:

 Nếu tổng số giờ làm của nhân viên >=200 thì thưởng = lương * 20%

 Nếu tổng số giờ làm của nhân viên <200 và >=100 thì thưởng = lương * 10%

 Nếu tổng số giờ làm của nhân viên <100 thì thưởng = 0
 */


class Nhanvien
{
    var name : String
    var age  : Int
    var address: String
    var luong : Double
    var gioLam : Int
    
    init(_ name : String , _ age : Int, _ address : String , _ luong : Double , _ gioLam:Int)
    {
     self.name = name
        self.age = age
        self.address = address
        self.luong = luong
        self.gioLam = gioLam
    }
    func printInfo()
    {
        print("""
              
                   name : \(name)
                   age : \(age)
                   address : \(address)
                   luong : \(luong)
                   gioLam : \(gioLam)
            """)
    }
    func mathLuong(gl : Int,l: Double)
    {
        var thuong : Double
        if gl >= 200
        {
             thuong =  l / Double(5)
            
        }
        else if gl < 200 && gl >= 100
        {
             thuong = l / Double(10)
        }
        else {
            thuong = 0
        }
        print("TIền thưởng của nhân viên là : \(thuong)")
        
    }
    
}

func inputNV() -> (name : String , age : Int , address : String , luong : Double , gioLam : Int)
{
    print("Nhập tên :  ")
    var name = readLine()!
    print("Nhập tuổi :  ")
    var age = Int(readLine()!)!
    print("Nhập địa chỉ :  ")
    var address = readLine()!
    print("Nhập lương :  ")
    var luong = Double(readLine()!)!
    print("Nhập giờ làm :  ")
    var gioLam = Int(readLine()!)!
    
    return (name,age,address,luong,gioLam)
}
//var input1 = inputNV()
//
//var nhanVien = Nhanvien(input1.name,input1.age,input1.address,input1.luong,input1.gioLam)
//nhanVien.printInfo()
//nhanVien.mathLuong(gl: input1.gioLam, l: input1.luong)

//MARK: - bài 3
/*
 3.

 Xây dựng tam giác (Triangle) có các thuộc tính và method như sau:

 Thuộc tính: 3 cạnh  của một tam giác

 Phương thức:

 - Hàm khởi tạo truyền vào 3 cạnh

 - Xác định kiểu tam giác: tam giác cân, tam giác đều, tam giác vuông, tam giác thường

 - Tính chu vi tam giác

 - Tính diện tích tam giác*/

class Triangle
{
    var canh1 : Float
    var canh2 : Float
    var canh3 : Float
    
    init(_ canh1 : Float ,_ canh2 : Float , _ canh3:Float) {
        self.canh1=canh1
        self.canh2=canh2
        self.canh3=canh3
    }
    
    func Xacdinhtamgiac(c1 : Float , c2 : Float , c3 : Float) -> Int
    {
        if c1<c2+c3 && c2<c1+c3 && c3<c1 + c2 {
                if c1*c1 == c2*c2 + c3*c3 || c2*c2 == c1*c1  + c3*c3 || c3*c3 == c2*c2 + c1*c1
                {
                    print("Day la tam giac vuong")
                    
                }
                else if c1==c2 && c2==c3
                {
                    print("Day la tam giac deu")
                    
                }
                else if c1==c2 || c1==c3 || c2==c3
                {
                    print("Day la tam giac can")
                    
                }
             return 1
            }
        else
        {
            print("Ba canh a, b, c khong phai la ba canh cua mot tam giac")
          return 0
        }
    
    }
    func chuvi(c1 : Float , c2: Float,c3:Float)
    {
        let cv = c1 + c2 + c3
        print("chu vi tam giac là \(cv)")
        
    }
    func dientich(c1 : Float , c2: Float,c3:Float)
    {
        let p : Float = (c1 + c2 + c3) / 2
        let s = sqrtf(p*(p-c1)*(p-c2)*(p-c3))
        print("dien tich tam giac là \(s)")
    }
    
}

func inputTri() -> (c1 : Float , c2 : Float , c3 : Float)
{
    print("Nhập c1 :  ")
    let c1 = Float(readLine()!)!
    print("Nhập c2 :  ")
    let c2 = Float(readLine()!)!
    print("Nhập c3 :  ")
    let c3 = Float(readLine()!)!
    return (c1,c2,c3)
}
//var input2 = inputTri()
//var tri = Triangle(input2.c1,input2.c2,input2.c3)
//var n = tri.Xacdinhtamgiac(c1: input2.c1, c2: input2.c2, c3: input2.c3)
//if n == 1
//{
//    tri.chuvi(c1: input2.c1, c2: input2.c2, c3: input2.c1)
//    tri.dientich(c1: input2.c1, c2: input2.c2, c3: input2.c1)
//}
//else {
//    print("stop")
//}
