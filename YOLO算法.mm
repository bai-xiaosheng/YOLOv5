
<map>
  <node ID="root" TEXT="YOLO算法">
    <node TEXT="整体结构" ID="6kXPMoW5mp" _mubu_text="%3Cspan%3E%E6%95%B4%E4%BD%93%E7%BB%93%E6%9E%84%3C/span%3E" STYLE="bubble" POSITION="right">
      <node TEXT="backbone+neck+Detection head" ID="7dNFtUQZfo" _mubu_text="%3Cspan%3Ebackbone+neck+Detection%20head%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="backbone是特征提取的主干网络，主要有VGG，Resnet、DCN网络等" ID="D8bzM9QH1l" _mubu_text="%3Cspan%3Ebackbone%E6%98%AF%E7%89%B9%E5%BE%81%E6%8F%90%E5%8F%96%E7%9A%84%E4%B8%BB%E5%B9%B2%E7%BD%91%E7%BB%9C%EF%BC%8C%E4%B8%BB%E8%A6%81%E6%9C%89VGG%EF%BC%8CResnet%E3%80%81DCN%E7%BD%91%E7%BB%9C%E7%AD%89%3C/span%3E" STYLE="bubble" POSITION="right"/>
    <node TEXT="neck是将提取到的特征进行整合，主要有FPN金字塔结构,SPP等。spp就是用多个不同尺寸的卷积核来丰富感受野。" ID="1QyQb5kNU4" _mubu_text="%3Cspan%3Eneck%E6%98%AF%E5%B0%86%E6%8F%90%E5%8F%96%E5%88%B0%E7%9A%84%E7%89%B9%E5%BE%81%E8%BF%9B%E8%A1%8C%E6%95%B4%E5%90%88%EF%BC%8C%E4%B8%BB%E8%A6%81%E6%9C%89FPN%E9%87%91%E5%AD%97%E5%A1%94%E7%BB%93%E6%9E%84,SPP%E7%AD%89%E3%80%82spp%E5%B0%B1%E6%98%AF%E7%94%A8%E5%A4%9A%E4%B8%AA%E4%B8%8D%E5%90%8C%E5%B0%BA%E5%AF%B8%E7%9A%84%E5%8D%B7%E7%A7%AF%E6%A0%B8%E6%9D%A5%E4%B8%B0%E5%AF%8C%E6%84%9F%E5%8F%97%E9%87%8E%E3%80%82%3C/span%3E" STYLE="bubble" POSITION="right"/>
    <node TEXT="Detection head是用几个卷积网络对每个分支特征进行预测。" ID="mGIcjH14wz" _mubu_text="%3Cspan%3EDetection%20head%E6%98%AF%E7%94%A8%E5%87%A0%E4%B8%AA%E5%8D%B7%E7%A7%AF%E7%BD%91%E7%BB%9C%E5%AF%B9%E6%AF%8F%E4%B8%AA%E5%88%86%E6%94%AF%E7%89%B9%E5%BE%81%E8%BF%9B%E8%A1%8C%E9%A2%84%E6%B5%8B%E3%80%82%3C/span%3E" STYLE="bubble" POSITION="right"/>
    <node TEXT="YOLOV1算法" ID="YOgvk53zjz" _mubu_text="%3Cspan%20class=%22bold%22%3EYOLOV1%E7%AE%97%E6%B3%95%3C/span%3E" STYLE="bubble" POSITION="right"/>
    <node TEXT="网络结构" ID="zdRbB7a5F6" _mubu_text="%3Cspan%3E%E7%BD%91%E7%BB%9C%E7%BB%93%E6%9E%84%3C/span%3E" STYLE="bubble" POSITION="left">
      <node TEXT="CNN+maxpolling+FCN" ID="wOOZWQDDqp" _mubu_text="%3Cspan%3ECNN+maxpolling+FCN%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="核心思想" ID="T5SYPs0oD8" _mubu_text="%3Cspan%3E%E6%A0%B8%E5%BF%83%E6%80%9D%E6%83%B3%3C/span%3E" STYLE="bubble" POSITION="left">
      <node TEXT="将图片分成SXS个网络，对每个网格预测bonding box（x,y,w,h,c），其中xy是中心位置，c是置信度。一般情况下要预测B个box。此外还要预测C个类别。在yolov1中将图片分为7X7，每个网格预测两个box，20个类别。" ID="UqAoNN1VhI" _mubu_text="%3Cspan%3E%E5%B0%86%E5%9B%BE%E7%89%87%E5%88%86%E6%88%90SXS%E4%B8%AA%E7%BD%91%E7%BB%9C%EF%BC%8C%E5%AF%B9%E6%AF%8F%E4%B8%AA%E7%BD%91%E6%A0%BC%E9%A2%84%E6%B5%8Bbonding%20box%EF%BC%88x,y,w,h,c%EF%BC%89%EF%BC%8C%E5%85%B6%E4%B8%ADxy%E6%98%AF%E4%B8%AD%E5%BF%83%E4%BD%8D%E7%BD%AE%EF%BC%8Cc%E6%98%AF%E7%BD%AE%E4%BF%A1%E5%BA%A6%E3%80%82%E4%B8%80%E8%88%AC%E6%83%85%E5%86%B5%E4%B8%8B%E8%A6%81%E9%A2%84%E6%B5%8BB%E4%B8%AAbox%E3%80%82%E6%AD%A4%E5%A4%96%E8%BF%98%E8%A6%81%E9%A2%84%E6%B5%8BC%E4%B8%AA%E7%B1%BB%E5%88%AB%E3%80%82%E5%9C%A8yolov1%E4%B8%AD%E5%B0%86%E5%9B%BE%E7%89%87%E5%88%86%E4%B8%BA7X7%EF%BC%8C%E6%AF%8F%E4%B8%AA%E7%BD%91%E6%A0%BC%E9%A2%84%E6%B5%8B%E4%B8%A4%E4%B8%AAbox%EF%BC%8C20%E4%B8%AA%E7%B1%BB%E5%88%AB%E3%80%82%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="损失函数" ID="UD84fjBMC2" _mubu_text="%3Cspan%3E%E6%8D%9F%E5%A4%B1%E5%87%BD%E6%95%B0%3C/span%3E" STYLE="bubble" POSITION="left">
      <node TEXT="损失函数主要由位置损失、置信度损失和类别损失三部分组成" ID="6r1G2sZiNf" _mubu_text="%3Cspan%3E%E6%8D%9F%E5%A4%B1%E5%87%BD%E6%95%B0%E4%B8%BB%E8%A6%81%E7%94%B1%E4%BD%8D%E7%BD%AE%E6%8D%9F%E5%A4%B1%E3%80%81%E7%BD%AE%E4%BF%A1%E5%BA%A6%E6%8D%9F%E5%A4%B1%E5%92%8C%E7%B1%BB%E5%88%AB%E6%8D%9F%E5%A4%B1%E4%B8%89%E9%83%A8%E5%88%86%E7%BB%84%E6%88%90%3C/span%3E" STYLE="fork"/>
      <node TEXT="" ID="9YxxShTPlz" _mubu_text="" STYLE="fork"/>
      <node TEXT="其中需要注意w和h采用根植进行计算，其原因主要是对于小的box而言，偏差影响更大。从下图可以看到如果使用常规误差函数，蓝色框与两个红框的偏差一样大，不符合实际情况，所以使用根号计算。" ID="MhMsdYwsUL" _mubu_text="%3Cspan%3E%E5%85%B6%E4%B8%AD%E9%9C%80%E8%A6%81%E6%B3%A8%E6%84%8Fw%E5%92%8Ch%E9%87%87%E7%94%A8%E6%A0%B9%E6%A4%8D%E8%BF%9B%E8%A1%8C%E8%AE%A1%E7%AE%97%EF%BC%8C%E5%85%B6%E5%8E%9F%E5%9B%A0%E4%B8%BB%E8%A6%81%E6%98%AF%E5%AF%B9%E4%BA%8E%E5%B0%8F%E7%9A%84box%E8%80%8C%E8%A8%80%EF%BC%8C%E5%81%8F%E5%B7%AE%E5%BD%B1%E5%93%8D%E6%9B%B4%E5%A4%A7%E3%80%82%E4%BB%8E%E4%B8%8B%E5%9B%BE%E5%8F%AF%E4%BB%A5%E7%9C%8B%E5%88%B0%E5%A6%82%E6%9E%9C%E4%BD%BF%E7%94%A8%E5%B8%B8%E8%A7%84%E8%AF%AF%E5%B7%AE%E5%87%BD%E6%95%B0%EF%BC%8C%E8%93%9D%E8%89%B2%E6%A1%86%E4%B8%8E%E4%B8%A4%E4%B8%AA%E7%BA%A2%E6%A1%86%E7%9A%84%E5%81%8F%E5%B7%AE%E4%B8%80%E6%A0%B7%E5%A4%A7%EF%BC%8C%E4%B8%8D%E7%AC%A6%E5%90%88%E5%AE%9E%E9%99%85%E6%83%85%E5%86%B5%EF%BC%8C%E6%89%80%E4%BB%A5%E4%BD%BF%E7%94%A8%E6%A0%B9%E5%8F%B7%E8%AE%A1%E7%AE%97%E3%80%82%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="优缺点：" ID="Q7FxlOAbJ4" _mubu_text="%3Cspan%3E%E4%BC%98%E7%BC%BA%E7%82%B9%EF%BC%9A%3C/span%3E" STYLE="bubble" POSITION="left">
      <node TEXT="速度快" ID="1vpJbEOIfT" _mubu_text="%3Cspan%3E%E9%80%9F%E5%BA%A6%E5%BF%AB%3C/span%3E" STYLE="fork"/>
      <node TEXT="对于小目标检测效果差" ID="XKxbnHyo1v" _mubu_text="%3Cspan%3E%E5%AF%B9%E4%BA%8E%E5%B0%8F%E7%9B%AE%E6%A0%87%E6%A3%80%E6%B5%8B%E6%95%88%E6%9E%9C%E5%B7%AE%3C/span%3E" STYLE="fork"/>
      <node TEXT="对于重复目标检测效果差（每个网格只对应一个类别）" ID="Vi8lNgjdUb" _mubu_text="%3Cspan%3E%E5%AF%B9%E4%BA%8E%E9%87%8D%E5%A4%8D%E7%9B%AE%E6%A0%87%E6%A3%80%E6%B5%8B%E6%95%88%E6%9E%9C%E5%B7%AE%EF%BC%88%E6%AF%8F%E4%B8%AA%E7%BD%91%E6%A0%BC%E5%8F%AA%E5%AF%B9%E5%BA%94%E4%B8%80%E4%B8%AA%E7%B1%BB%E5%88%AB%EF%BC%89%3C/span%3E" STYLE="fork"/>
    </node>
    <node TEXT="" ID="aDOjLuSXxp" _mubu_text="" STYLE="bubble" POSITION="left"/>
  </node>
</map>