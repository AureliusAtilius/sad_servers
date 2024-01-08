#!/usr/bin/env python3

with open("/home/admin/scores.txt", "r") as scores:
    lines= [i.split()[1] for i in scores.readlines()]
    scores_strip= map(float, [s.rstrip() for s in lines])

    score_sum= sum(scores_strip)
    mean= "{:.2f}".format(score_sum/(len(lines)))

with open("/home/admin/solution","w") as solution:
    solution.write(mean)

