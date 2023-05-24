---
title: Home
---


{% include figure.html img="logo.png" alt="intro image here" caption="Library workshop" width="75%" %}


# Hyperion and ATLAS usage training

Welcome to the SLURM training session! We're thrilled to have you join us for this exciting journey into the world of High-Performance Computing (HPC) using SLURM.


<div class="toc" markdown="1">
## Contents:

{% for lesson in site.pages %}
{% if lesson.nav == true %}- [{{ lesson.title }}]({{ lesson.url | relative_url }})
{% endif %}
{% endfor %}
</div>


## Meet the Speakers
<table>
    <tr>
        <th>Iker Ortiz de Luzuriaga</th>
        <td>Iker is a recognized expert in HPC with years of experience in working with various job schedulers. His extensive knowledge and clear teaching style make complex topics easily understandable.</td>
    </tr>
    <tr>
        <th>Diego Lasa</th>
        <td>Diego brings his extensive hands-on experience with HPC systems to this course. His practical insights and tips will be invaluable for anyone starting their journey with SLURM.</td>
    </tr>
</table>



## Venue

The training session will be held at the DIPC's main auditorium and simultaneously streamed live on Zoom for remote participants. Login details for the virtual session will be shared via email closer to the event. Please note that the number of seats at the auditorium is limited. If you wish to attend the session in person, please send an email to dipc-scc-training@dipc.org to reserve your spot. Reservations will be granted on a first-come-first-serve basis.

## Course Materials

All the course materials, including the scripts used in the examples, will be made available on the course GitHub repository. We highly recommend cloning the repository and following along with the examples during the session.

## Schedule

The training session will be conducted as per the following schedule:

| Time         | Event                                  |
|--------------|----------------------------------------|
| 10:00-10:45  | Introduction and Workflow              |
| 10:45-11:00  | Coffee Break                           |
| 11:00-11:45  | First Example, Monitoring and Wrap-up  |

We look forward to an engaging and informative session ahead!



Hosted by [Dopnostia International Physics Center](https://dipc.ehu.eus/es), {{ site.pub_year }}.

> built using [Jekyll](https://jekyllrb.com/) and [GitHub Pages](https://pages.github.com/)
>
> images and content: cc-by-sa <a href="https://github.com/{{ site.github_username }}">{{ site.author }}</a> {{ site.pub_year}} (get [source code]({{ site.repo }})).
> Last build date: {{ site.time | date: "%Y-%m-%d" }}.
>
> <a href="http://creativecommons.org/licenses/by-sa/4.0/" rel="license"><img style="border-width: 0;" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" alt="Creative Commons License" /></a>
~                                                                                           
