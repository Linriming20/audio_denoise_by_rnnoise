##### 前言

本demo是直接编译开源项目rnnoise得到的头文件、库文件，以及拷贝项目中的`examples/rnnoise_demo.c`进行使用。

<font color=red>**注意：由于环境问题以及没有相应的“原语音文件”、“底噪文件”，所以本demo中未进行神经网络训练。**</font>



### 1、编译

**rnnoise编译：**（源码下载地址：[https://github.com/xiph/rnnoise](https://github.com/xiph/rnnoise)）

```bash
unzip rnnoise-master.zip
cd rnnoise-master/
# 先进行神经网络训练（详情见参考文章）
# ...

# 再编译得到库及头文件
./autogen.sh
./configure --prefix=$PWD/_install
make
make install
```

**demo编译及使用：**

```bash
$ make clean && make
$ 
$ ./rnnoise_demo 
usage: ./rnnoise_demo <noisy speech> <output denoised>
$ 
$ ./rnnoise_demo audio/test_44100_16bit_stereo.pcm out_44100_16bit_stereo_denoise.pcm
$ ./rnnoise_demo audio/test_8000_16bit_mono.pcm out_8000_16bit_mono_denoise.pcm
```



### 2、参考文章

- [深度学习降噪方案-RNNoise简介和环境配置\_danteliujie的博客-CSDN博客_rnnoise](https://blog.csdn.net/danteLiujie/article/details/102769905) （项目使用流程图整理很好，但神经网络训练命令有些差异。）

- [RNNoise降噪训练\_韩搏的博客-CSDN博客_rnnoise 训练](https://blog.csdn.net/hanbo622/article/details/120779545) （神经网络训练命令整理得不错，但编译源码应该放在训练之后，应该是先训练再编译。）



### 附录（demo目录架构）

```bash
$ tree
.
├── audio
│   ├── out_44100_16bit_stereo_denoise.pcm
│   ├── out_8000_16bit_mono_denoise.pcm
│   ├── test_44100_16bit_stereo.pcm
│   └── test_8000_16bit_mono.pcm
├── include
│   └── rnnoise.h
├── lib
│   └── librnnoise.a
├── Makefile
├── README.md
└── rnnoise_demo.c
```



