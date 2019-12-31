> 本文内容由[Sutherland–Hodgman算法](https://zh.wikipedia.org/wiki/Sutherland–Hodgman算法)转换而来。


**Sutherland–Hodgman算法**是裁剪[多边形](../Page/多边形.md "wikilink")的[算法](../Page/算法.md "wikilink")。它通过轮流延长每个[凸多边形](../Page/凸多边形.md "wikilink")的边，并且只选择在可见一侧的顶点来完成任务。

## 描述

该算法从目标多边形中所有顶点的输入[列表开始](../Page/串列_\(抽象資料型別\).md "wikilink")。接下来，剪裁多边形的一条边在两个方向上无限延伸，同时遍历目标多边形的边。如果输入列表中的顶点位于扩展的剪裁多边形线的可见侧，则它们会插入到输出列表中，并且目标多边形与剪裁多边形的延长后的边相交的顶点会添加到输出列表。

使用一个阶段的输出列表作为下一个阶段的输入列表，对每个剪辑多边形侧重复进行此过程。剪裁多边形的所有边都经过处理后，最终生成的顶点列表将定义一个完全可见的新单个多边形。请注意，如果目标多边形在剪裁多边形外部的顶点处[凹入](../Page/凹多边形.md "wikilink") ，则新多边形可能具有重叠的边缘——这对于渲染是可接受的，但不适用于其他应用程序，例如计算阴影。

[居中](https://zh.wikipedia.org/wiki/File:Sutherland-Hodgman_clipping_sample.svg "fig:居中")

## 伪代码

给定一个剪裁多边形的一组边，和一个目标多边形的顶点列表，下面的过程将目标多边形根据剪裁多边形进行剪裁。

```
   List outputList = subjectPolygon;

   for (Edge clipEdge in clipPolygon) do
      List inputList = outputList;
      outputList.clear();

      for(int i = 0 ; i < inputList.count ; i += 1) do
         Point current_point = inputList[i];
         Point prev_point = inputList[(i + inputList.count - 1) % inputList.count];

         Point Intersecting_point = ComputeIntersection(prev_point, current_point, clipEdge)

         if (current_point inside clipEdge) then
            if (prev_point not inside clipEdge) then
               outputList.add(Intersecting_point);
            end if
            outputList.add(current_point);

         else if (prev_point inside clipEdge) then
            outputList.add(Intersecting_point);
         end if

      done
   done
```

当算法终止时，将在*outputList中*找到裁剪后多边形的顶点。请注意，如果它位于该边缘作为多边形的剩余部分的相同侧上的点被定义为边缘*的内侧* 。如果剪裁多边形的顶点始终沿逆时针方向列出，那么这等效于测试该点是否位于直线的左侧（left表示*内部* ，right表示*外部* ），这可以通过简单地使用[叉积](../Page/叉积.md "wikilink") 实现。

*ComputeIntersection*是一个函数，为清楚起见在此省略了该函数，它返回线段和无限边的交点。请注意，仅在已知存在这种相交的情况下才调用它，因此可以简单地将两条线都视为无限长。

## 参看

  - [Weiler–Atherton剪裁算法](https://zh.wikipedia.org/wiki/Weiler–Atherton幅算法 "wikilink")
  - [Vatti剪裁算法](https://zh.wikipedia.org/wiki/华帝幅算法 "wikilink")

## 参考文献

  - Mel Slater, Anthony Steed, Yiorgos Chrysanthou: *Computer Graphics and Virtual Environments: From Realism to Real-Time.* Addison Wesley. .
  - [Ivan Sutherland](https://zh.wikipedia.org/wiki/Ivan_Sutherland "wikilink"), Gary W. Hodgman: *Reentrant Polygon Clipping.* [Communications of the ACM](https://zh.wikipedia.org/wiki/Communications_of_the_ACM "wikilink"), vol. 17, pp. 32–42, 1974

## 外部连接

  - [多边裁剪和填充](http://www.cs.drexel.edu/~david/Classes/CS430/Lectures/L-05_Polygons.6.pdf) 使用易于理解的图片描述了这个算法。

[Category:计算机图形学](https://zh.wikipedia.org/wiki/Category:计算机图形学 "wikilink") [Category:算法](https://zh.wikipedia.org/wiki/Category:算法 "wikilink")