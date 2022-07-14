//编译命令 g++ -g -Wall -std=c++11 cppSyntax.cpp -o cppSyntax.out
#include<iostream>  
#include<string>  
#include <limits>  
#include <vector>
#include <map>
using namespace std;
//typedef 声明
typedef int feet;
//枚举类型
enum color { red = 5, green, blue };
//方法要先声明再调用
int main2();
int main3();
//常量
#define LENGTH 10   
//在文件内有效
static int staticValue = 5;
//全局变量
int globalValue = 1;
//extern 是用来声明在另一个文件中的一个全局变量或函数。
extern int count;
//定义结构
struct Book
{
   char  title[50];
   char  author[50];
   char  subject[100];
   int   book_id;
};

int main()  
{  
    //如果在函数中修改这个变量，下次运行这个函数，staticValue2就是修改后的值而不是10
    static int staticValue2 = 10;
    //typedef 声明
    feet distance = 1;
    //枚举类型
    color c = green;
    //常量
    const int  WIDTH  = 5;
    // for 循环执行
   for( int a = 10; a < 20; a = a + 1 )
   {
   }
   int my_array[5] = {1, 2, 3, 4, 5};
    // C++11新语法
    for (int &x : my_array)
    {
        x *= 2;
    }
    //数组
    double balance[5] = {0,1,2,3,4};
    //字符串
    char greeting[] = "Hello";
    string str1 = "str1";
    int len = str1.size();
    //布尔类型
    bool a = true;

    //指针,greeting是的类型是(char *)，只是将char指针传入cout的时候，他会自动后续的char，直到遇到\0，而将int指针传入的时候，就直接打印指针地址
    char *point = greeting;

    main2();

    return 0;
}




int main2(){
    //引用,引用变量是一个别名，也就是说，它是某个已存在变量的另一个名字,并且要在创建时初始化，之后不能改变
    //引用==指向目标的指针加*
    //将引用传入函数，可以修改函数外的值，可以证明这一点
    int a = 10;
    int& b = a;

    //struct
    Book b1;
    strcpy( b1.title, "C++ 教程");
    b1.book_id = 123;
    struct Book *struct_pointer = &b1;
    char *cs = struct_pointer->title;

    main3();
}

class Father1{
    private:
    int memberVar = 10;
    public:
    Father1(int a){
    }
    //必须要加virtual才会被动态绑定,并且是父类加一次就够了，子类或者孙类不用加
    virtual void foo1(){
    }
    void foo3();
};
//在类定义中的定义的函数都是内联函数，即使没有使用 inline 说明符。
void Father1::foo3(){
}

class Father2{
    //纯虚函数，有纯虚函数的类为抽象类，不能被实例化
    virtual void foo2() = 0;
};
//多继承如果有相同函数的话，编译不过
//public为继承类型，感觉一直用public就够了
class Son:public Father1,public Father2{
    public:
    //静态成员变量和函数
    static int haha;
    static int hehe(){
        cout << "hehe called";
    }
    //如果父类没有默认的初始化函数，这里要指定调用父类的初始化函数
    Son():Father1(1){

    }
    void foo1(){
    }
    void foo2(){

    }
};
//非const静态成员变量要在外面初始化
int Son::haha = 11;

/**
运算符重载，重载了<<和>>两个运算符
让"xxxxx" >> zout也能输出，"xxx" >> cout是不能输出的
用友元函数的原因，如果作为成员函数，第一个参数会默认传(*this)
**/
class ZOut{
    public:
    friend void operator<<(ZOut &zout,string str){
        cout << str << endl;
    }
    friend void operator>>(string str,ZOut &zout){
        cout << str << endl;
    }
};
ZOut zout;
int main4();
int main3(){
    //在栈上初始化对象
    Son son;
    Son *son2 = new Son();
    son.foo3();
    son2->foo1();

    Son::hehe();
    cout << Son::haha;

    main4();
}

//范型函数
template <typename T>
inline T const& Max (T const& a, T const& b) 
{ 
    return a < b ? b:a; 
}
//范型类
template <typename T>
class Stack {
    private:
    T mVar;
  public: 
    void push(T const&);  // 入栈
    T pop(){
        return mVar;
    }
    // 返回栈顶元素，const说明这个方法不会修改成员变量
    T top() const;            
};

template <typename T>
void Stack<T>::push (T const& elem) 
{
    mVar = elem;
} 

class BigClass{
    double arr[10000];
};
class BBClass{
    BigClass arr[10000];
};


int main4(){
    //vector的内容是分配到堆上的，所以在可以在栈上初始化vector
    vector<string> v;
    v.push_back("ehhehehe");
    v.pop_back(); //删除最后一个元素

    map<string, int> m1; //<>里的第一个参数表示key的类型,第二个参数表示value的类型
    m1["Kobe"] = 100;
    m1.erase("Kobe");//通过关键字来删除
    m1.clear(); //清空全部


    
}