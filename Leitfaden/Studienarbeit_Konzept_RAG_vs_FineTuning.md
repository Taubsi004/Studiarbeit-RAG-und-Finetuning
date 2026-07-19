# Studienarbeit: RAG vs. Fine-Tuning
## Ein konzeptioneller Kriterienkatalog zur Architekturauswahl für internes Unternehmenswissen mittels LLMs

**Autor:** Tobias Weigold
**Umfang:** ca. 20 Seiten
**Bearbeitungszeit:** ca. 2 Monate
**Charakter:** Konzeptionell-literaturbasiert (keine Experimente)

---

## 1. Empfohlene Gliederung

Die Gliederung ist so aufgebaut, dass alle Kapitel zielgerichtet auf die finale Entscheidungsmatrix in Kapitel 6 hinarbeiten. Jedes Kriterium, das du dort verwendest, wird vorher hergeleitet.

### 1. Einleitung (~2 Seiten)
- 1.1 Problemstellung: Wissensintensive Aufgaben in Unternehmen und die Grenzen generischer LLMs (Halluzinationen, Knowledge Cut-off, fehlende Domänenexpertise)
- 1.2 Zielsetzung der Arbeit: Entwicklung eines konzeptionellen Kriterienkatalogs
- 1.3 Forschungsfrage(n):
  - F1: Welche Kriterien sind bei der Architekturauswahl zwischen RAG und Fine-Tuning für internes Unternehmenswissen relevant?
  - F2: Wie lassen sich diese Kriterien in eine praxistaugliche Entscheidungsmatrix überführen?
- 1.4 Methodisches Vorgehen: Systematische Literaturanalyse → Kriterienableitung → Synthese in Matrix
- 1.5 Aufbau der Arbeit

### 2. Grundlagen (~4 Seiten)
- 2.1 Large Language Models (LLMs): Architektur, Training, parametrisches Wissen
- 2.2 Das Problem des Wissens in LLMs
  - 2.2.1 Halluzinationen (Definition nach Huang et al. 2024)
  - 2.2.2 Knowledge Cut-off und Aktualität
  - 2.2.3 Domänenspezifisches vs. Allgemeinwissen
- 2.3 Internes Unternehmenswissen: Charakteristika
  - 2.3.1 Strukturiertes vs. unstrukturiertes Wissen
  - 2.3.2 Statisches vs. dynamisches Wissen
  - 2.3.3 Vertraulichkeit, Zugriffsrechte, Compliance (DSGVO)
- 2.4 Begriffsabgrenzung: Adaption, Knowledge Injection, Domain Specialization

### 3. Retrieval-Augmented Generation (RAG) (~3 Seiten)
- 3.1 Definition und Ursprung (Lewis et al. 2020)
- 3.2 Architekturelle Komponenten
  - 3.2.1 Retriever (Dense/Sparse, Embedding-Modelle)
  - 3.2.2 Vektordatenbank/Index
  - 3.2.3 Generator (LLM)
- 3.3 RAG-Paradigmen nach Gao et al. (2024)
  - 3.3.1 Naive RAG
  - 3.3.2 Advanced RAG (Pre-/Post-Retrieval-Optimierungen)
  - 3.3.3 Modular RAG
- 3.4 Stärken und Schwächen (theoretisch hergeleitet)

### 4. Fine-Tuning von LLMs (~3 Seiten)
- 4.1 Definition und Grundprinzip
- 4.2 Klassifikation der Fine-Tuning-Verfahren
  - 4.2.1 Full Fine-Tuning
  - 4.2.2 Supervised Fine-Tuning (SFT) vs. Continual Pre-Training
  - 4.2.3 Parameter-Efficient Fine-Tuning (PEFT)
    - LoRA (Hu et al. 2021)
    - QLoRA, Adapter, Prefix-Tuning
- 4.3 Catastrophic Forgetting und Stability-Plasticity-Dilemma
- 4.4 Stärken und Schwächen

### 5. Vergleichende Analyse: Kriterienableitung (~4 Seiten) — **Kern der Arbeit**
Hier leitest du systematisch jedes Kriterium aus der Literatur ab. Jedes Kriterium bekommt einen kurzen Absatz mit Begründung.

- 5.1 **Wissensbezogene Kriterien**
  - K1: Aktualität/Dynamik des Wissens (statisch vs. häufige Updates)
  - K2: Wissensvolumen und Skalierbarkeit der Knowledge Base
  - K3: Strukturgrad des Wissens (Dokumente vs. tabellarisch vs. Code)
  - K4: Notwendigkeit von Faktentreue und Quellennachweis (Provenance)
- 5.2 **Aufgabenbezogene Kriterien**
  - K5: Art der Aufgabe (Faktenabruf vs. Stil/Format vs. Reasoning)
  - K6: Multi-Hop-Reasoning-Anforderungen
  - K7: Notwendigkeit domänenspezifischer Sprache/Terminologie
- 5.3 **Ressourcen- und Kostenkriterien**
  - K8: Rechenressourcen (Training vs. Inferenz)
  - K9: Datenaufwand (Trainingsdaten-Qualität und -Menge)
  - K10: Wartung und Betriebskosten (TCO)
  - K11: Latenz und Performance
- 5.4 **Organisatorische und regulatorische Kriterien**
  - K12: Datenschutz, DSGVO, vertrauliche Daten, wichtig: EU AI Act mit einbeziehen, auch als Quelle einbeziehen, auch: wann wird man Anbiete? Nachteil Finetuning.
  - K13: Auditierbarkeit und Erklärbarkeit
  - K14: Verfügbarkeit von Fachexpertise im Unternehmen
  - K15: Vendor Lock-in und Modellzugang (Open vs. Closed)
- 5.5 **Hybride Ansätze** (RAFT, fine-tuned RAG, Knowledge Injection via Distillation)

### 6. Entscheidungsmatrix und Anwendung (~3 Seiten) — **Hauptergebnis**
- 6.1 Konstruktionslogik der Matrix
- 6.2 Die Matrix: Kriterium × Architekturoption (RAG / FT / Hybrid)
  - Bewertungsskala (z. B. ++/+/o/−/−−) oder Punkteskala
  - Optional: Gewichtung der Kriterien
- 6.3 Anwendungsleitfaden (Schritt-für-Schritt-Vorgehen)
- 6.4 Illustrative Anwendungsszenarien (3 konstruierte Cases, z. B.):
  - Case A: Interne FAQ/Wissensdatenbank mit häufigen Updates → RAG
  - Case B: Stilistisch konsistenter interner Schreibassistent → Fine-Tuning
  - Case C: Komplexer Support-Agent mit Compliance-Anforderungen → Hybrid

### 7. Diskussion und Limitationen (~1 Seite)
- 7.1 Reflexion der Matrix-Validität
- 7.2 Grenzen der konzeptionellen Methodik (keine empirische Validierung)
- 7.3 Übertragbarkeit auf andere Domänen

### 8. Fazit und Ausblick (~1 Seite)
- 8.1 Zusammenfassung der Erkenntnisse
- 8.2 Beantwortung der Forschungsfragen
- 8.3 Ausblick: Agentic RAG, kontinuierliches Lernen, Knowledge-Graph-Integration

### Literaturverzeichnis
### Anhang (optional: Glossar, ausführliche Matrix)

---

## 2. Literatur — kategorisiert und annotiert

### A) Kernliteratur (Pflichtlektüre)

**RAG — Originalpaper:**
1. **Lewis, P. et al. (2020)**: *Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks.* NeurIPS 2020. [arXiv:2005.11401](https://arxiv.org/abs/2005.11401)
   → Das Gründungspaper. Definiert RAG erstmals formal.

2. **Gao, Y. et al. (2024)**: *Retrieval-Augmented Generation for Large Language Models: A Survey.* [arXiv:2312.10997](https://arxiv.org/abs/2312.10997)
   → Der zentrale Survey. Liefert die Naive/Advanced/Modular-Taxonomie. **Pflicht für Kapitel 3.**

3. **Oche, A. J. et al. (2025)**: *A Systematic Review of Key Retrieval-Augmented Generation (RAG) Systems: Progress, Gaps, and Future Directions.* [arXiv:2507.18910](https://arxiv.org/abs/2507.18910)
   → Aktueller systematischer Review, behandelt explizit Enterprise-Deployment, Sicherheit und Skalierung.

**Fine-Tuning / PEFT:**
4. **Hu, E. J. et al. (2021)**: *LoRA: Low-Rank Adaptation of Large Language Models.* [arXiv:2106.09685](https://arxiv.org/abs/2106.09685)
   → Originalpaper für LoRA. **Pflicht für Kapitel 4.**

5. **Abdullah, A. A. et al. (2025)**: *Evolution of Meta's LLaMA Models and Parameter-Efficient Fine-Tuning of Large Language Models: A Survey.* [arXiv:2510.12178](https://arxiv.org/abs/2510.12178)
   → Aktueller PEFT-Überblick (LoRA, QLoRA, Adapter etc.).

6. **Song, Z. et al. (2025)**: *Injecting Domain-Specific Knowledge into Large Language Models: A Comprehensive Survey.* [arXiv:2502.10708](https://arxiv.org/abs/2502.10708)
   → Wichtig: kategorisiert Knowledge-Injection in 4 Ansätze (dynamic, static, modular adapters, prompt). Hilft beim systematischen Vergleich.

**Direkter Vergleich RAG vs. Fine-Tuning:**
7. **Ovadia, O. et al. (2023)**: *Fine-Tuning or Retrieval? Comparing Knowledge Injection in LLMs.* [arXiv:2312.05934](https://arxiv.org/abs/2312.05934)
   → **Zentrales Vergleichspaper.** Zeigt empirisch, dass RAG für reine Wissensinjektion meist überlegen ist.

8. **Balaguer, A. et al. (2024)**: *RAG vs Fine-tuning: Pipelines, Tradeoffs, and a Case Study on Agriculture.* [arXiv:2401.08406](https://arxiv.org/abs/2401.08406)
   → Microsoft-Paper, beschreibt sehr klar die Pipelines beider Ansätze und ihre Komplementarität.

9. **Soudani, H. et al. (2024)**: *Fine Tuning vs. Retrieval Augmented Generation for Less Popular Knowledge.* [arXiv:2403.01432](https://arxiv.org/abs/2403.01432)
   → Differenziert nach Wissenshäufigkeit — wichtig fürs Kriterium "Long-Tail-Wissen".

10. **Yang, Z. et al. (2026)**: *Fine-Tuning vs. RAG for Multi-Hop Question Answering with Novel Knowledge.* [arXiv:2601.07054](https://arxiv.org/abs/2601.07054)
    → Wichtige Differenzierung: SFT vs. unsupervised FT vs. RAG bei zeitlich neuem Wissen.

### B) Enterprise- und Praxisliteratur

11. **Karakurt, E. & Akbulut, A. (2025)**: *Retrieval-Augmented Generation (RAG) and Large Language Models (LLMs) for Enterprise Knowledge Management and Document Automation: A Systematic Literature Review.* Applied Sciences 16(1), 368. [MDPI](https://www.mdpi.com/2076-3417/16/1/368)
    → **Ideal für deinen Enterprise-Fokus.** Systematischer Review zu 63 Studien, identifiziert "Lab-to-Market-Gap".

12. **Jiang, F. et al. (2024)**: *Enhancing Question Answering for Enterprise Knowledge Bases using Large Language Models.* [arXiv:2404.08695](https://arxiv.org/abs/2404.08695)
    → Konkretes EKRG-Framework für Unternehmenswissensbasen.

13. **O'Leary, D. (2024)**: *Large Language Models and Applications: The Rebirth of Enterprise Knowledge Management and the Rise of Prompt Libraries.* IEEE Intelligent Systems. [IEEE Xplore](https://ieeexplore.ieee.org/document/10510615/)
    → Strategische Perspektive auf LLMs im Enterprise-KM.

14. **Verma, K. (2026)**: *Comparative Analysis of RAG Algorithms and LLM Fine-Tuning Methods for Domain-Specific Search Tasks.* American Journal of Engineering. [Link](https://theamericanjournals.com/index.php/tajet/article/view/7698/7018)
    → Praxisnaher Vergleich für unternehmerische Suchaufgaben mit Empfehlung für Hybridansätze.

15. **Ait El Abbas, I.**: *When Do Large Language Models Need Retrieval? A Comparative Study of RAG, Fine-Tuning, and Hybrid Adaptation Strategies.* IJRISS. [Link](https://rsisinternational.org/journals/ijriss/article.php?id=6952)
    → Liefert "decision-oriented guidelines" — sehr relevant für deine Matrix.

### C) Spezialthemen und Hintergrund

**Halluzinationen / Faktentreue:**
16. **Huang, L. et al. (2024)**: *A Survey on Hallucination in Large Language Models: Principles, Taxonomy, Challenges, and Open Questions.* ACM. [arXiv:2311.05232](https://arxiv.org/abs/2311.05232)

17. **Xu, Z. et al. (2024)**: *Hallucination is Inevitable: An Innate Limitation of Large Language Models.* [arXiv:2401.11817](https://arxiv.org/abs/2401.11817)
    → Wichtiges theoretisches Argument für RAG.

**Hybride Ansätze:**
18. **Bhushan, K. et al. (2025)**: *Systematic Knowledge Injection into Large Language Models via Diverse Augmentation for Domain-Specific RAG.* [arXiv:2502.08356](https://arxiv.org/abs/2502.08356)

19. **Kujanpää, K. et al. (2024)**: *Knowledge Injection via Prompt Distillation.* [arXiv:2412.14964](https://arxiv.org/abs/2412.14964)
    → Zeigt, dass FT die RAG-Performance erreichen kann — relevant für die Diskussion.

**Domain Specialization:**
20. **Ling, C. et al. (2024)**: *Domain Specialization as the Key to Make Large Language Models Disruptive: A Comprehensive Survey.* [arXiv:2305.18703](https://arxiv.org/abs/2305.18703)
    → Liefert die Taxonomie der Spezialisierungstechniken.

21. **Ke, Z. et al. (2025)**: *Adaptation of Large Language Models.* [arXiv:2504.03931](https://arxiv.org/abs/2504.03931)
    → Aktuelles Tutorial-Paper zu LLM-Adaption.

---

## 3. Zentrale wörtliche Zitate für deine Definitionen

> **Hinweis:** Die folgenden Zitate sind aus den Originalabstracts und im exakten Wortlaut. Für die Studienarbeit zitierst du am besten direkt aus den Volltexten — diese Belegstellen geben dir aber bereits eine belastbare Grundlage.

### Definition RAG (Lewis et al. 2020)
> "We explore a general-purpose fine-tuning recipe for retrieval-augmented generation (RAG) — models which combine pre-trained parametric and non-parametric memory for language generation." ([Lewis et al. 2020, arXiv:2005.11401](https://arxiv.org/abs/2005.11401))

> "We introduce RAG models where the parametric memory is a pre-trained seq2seq model and the non-parametric memory is a dense vector index of Wikipedia, accessed with a pre-trained neural retriever." ([Lewis et al. 2020](https://arxiv.org/abs/2005.11401))

### RAG zur Lösung von LLM-Problemen (Gao et al. 2024)
> "Large Language Models (LLMs) showcase impressive capabilities but encounter challenges like hallucination, outdated knowledge, and non-transparent, untraceable reasoning processes. Retrieval-Augmented Generation (RAG) has emerged as a promising solution by incorporating knowledge from external databases." ([Gao et al. 2024, arXiv:2312.10997](https://arxiv.org/abs/2312.10997))

> "RAG synergistically merges LLMs' intrinsic knowledge with the vast, dynamic repositories of external databases." ([Gao et al. 2024](https://arxiv.org/abs/2312.10997))

### RAG-Paradigmen (Gao et al. 2024)
> "[...] the progression of RAG paradigms, encompassing the Naive RAG, the Advanced RAG, and the Modular RAG. It meticulously scrutinizes the tripartite foundation of RAG frameworks, which includes the retrieval, the generation and the augmentation techniques." ([Gao et al. 2024](https://arxiv.org/abs/2312.10997))

### Definition LoRA / PEFT (Hu et al. 2021)
> "We propose Low-Rank Adaptation, or LoRA, which freezes the pre-trained model weights and injects trainable rank decomposition matrices into each layer of the Transformer architecture, greatly reducing the number of trainable parameters for downstream tasks." ([Hu et al. 2021, arXiv:2106.09685](https://arxiv.org/abs/2106.09685))

> "Compared to GPT-3 175B fine-tuned with Adam, LoRA can reduce the number of trainable parameters by 10,000 times and the GPU memory requirement by 3 times." ([Hu et al. 2021](https://arxiv.org/abs/2106.09685))

### Vergleich (Balaguer et al. 2024)
> "RAG augments the prompt with the external data, while fine-Tuning incorporates the additional knowledge into the model itself." ([Balaguer et al. 2024, arXiv:2401.08406](https://arxiv.org/abs/2401.08406))
**→ Das ist DAS Schlüsselzitat für deine Einleitung in Kapitel 5.**

### Empirisches Kernergebnis (Ovadia et al. 2023)
> "Our findings reveal that while unsupervised fine-tuning offers some improvement, RAG consistently outperforms it, both for existing knowledge encountered during training and entirely new knowledge." ([Ovadia et al. 2023, arXiv:2312.05934](https://arxiv.org/abs/2312.05934))

> "LLMs struggle to learn new factual information through unsupervised fine-tuning, and [...] exposing them to numerous variations of the same fact during training could alleviate this problem." ([Ovadia et al. 2023](https://arxiv.org/abs/2312.05934))

### Enterprise-Kontext (Karakurt & Akbulut 2025)
> "The integration of Retrieval-Augmented Generation (RAG) with Large Language Models (LLMs) is rapidly transforming enterprise knowledge management [...]. Our findings reveal that enterprise adoption is largely in the experimental phase: 63.6% of implementations utilize GPT-based models, and 80.5% rely on standard retrieval frameworks such as FAISS or Elasticsearch." ([Karakurt & Akbulut 2025, Applied Sciences 16(1):368](https://www.mdpi.com/2076-3417/16/1/368))

### Hallucination als Motivation (Xu et al. 2024)
> "Hallucination has been widely recognized to be a significant drawback for large language models (LLMs). [...] we formalize the problem and show that it is impossible to eliminate hallucination in LLMs." ([Xu et al. 2024, arXiv:2401.11817](https://arxiv.org/abs/2401.11817))
**→ Sehr starkes Argument, warum reine LLMs nicht ausreichen.**

---

## 4. Skizze der Entscheidungsmatrix (Vorlage für Kapitel 6)

| **Kriterium** | **Beschreibung** | **RAG** | **Fine-Tuning** | **Hybrid** |
|---|---|---|---|---|
| K1: Aktualität / Häufigkeit von Wissensupdates | Wie oft ändert sich das Wissen? | ++ | −− | + |
| K2: Wissensvolumen | Große Knowledge Base | ++ | − | + |
| K3: Strukturgrad | Unstrukturierte Dokumente | ++ | o | + |
| K4: Quellennachweis (Provenance) | Auditierbarkeit/Zitierfähigkeit | ++ | − | + |
| K5: Stil/Format-Anpassung | Tonalität, Terminologie | − | ++ | ++ |
| K6: Multi-Hop-Reasoning | Komplexe Schlussfolgerung | o | + | ++ |
| K7: Domänenterminologie | Fachsprache verinnerlichen | + | ++ | ++ |
| K8: Initial-Compute | Trainingskosten | ++ | − | − |
| K9: Datenaufwand | Hochwertige Trainingsdaten | + | −− | − |
| K10: Wartung / TCO | Laufende Kosten | o | + | o |
| K11: Latenz | Antwortzeit | o | ++ | o |
| K12: Datenschutz / DSGVO | Vertrauliche Daten | ++ (on-prem RAG) | + | + |
| K13: Auditierbarkeit | Erklärbarkeit Outputs | ++ | −− | + |
| K14: Fachexpertise | ML-Know-how-Bedarf | + | −− | − |
| K15: Vendor Lock-in | Modellunabhängigkeit | ++ | o | + |

**Legende:** ++ sehr geeignet, + geeignet, o neutral, − weniger geeignet, −− ungeeignet

Optional kannst du die Kriterien gewichten (z. B. 1–3) und einen Score pro Architektur berechnen — das macht die Matrix als Entscheidungsinstrument noch greifbarer.

---

## 5. Realistischer Zeitplan (2 Monate)

| Woche | Aktivität |
|---|---|
| 1 | Literatur sichten, Pflichtlektüre lesen (Kernpaper 1–10) |
| 2 | Exposé schärfen, Kapitel 1 + Grundlagen-Recherche |
| 3 | Kapitel 2 (Grundlagen) schreiben |
| 4 | Kapitel 3 (RAG) schreiben |
| 5 | Kapitel 4 (Fine-Tuning) schreiben |
| 6 | Kapitel 5 (Kriterien) ableiten und schreiben — **Schwerpunkt** |
| 7 | Kapitel 6 (Matrix + Cases) — **Hauptergebnis** |
| 8 | Diskussion, Fazit, Korrektur, Formatierung |

---

## 6. Methodische Empfehlungen

1. **Methodik klar benennen:** Die Arbeit ist eine *systematische Literaturanalyse mit konzeptioneller Synthese*. Du folgst sinngemäß den PRISMA-Prinzipien (Suche, Screening, Synthese), ohne sie formal vollständig anzuwenden.
2. **Kriterien sauber begründen:** Jedes Kriterium in Kap. 5 sollte mindestens eine Literaturquelle als Begründung haben.
3. **Hybridansätze nicht unterschätzen:** Die aktuelle Forschung (z. B. Bhushan et al. 2025, Verma 2026) zeigt deutlich, dass hybride Lösungen oft die beste Wahl sind. Behandle "Hybrid" als gleichwertige dritte Option in der Matrix.
4. **Cases konstruktiv halten:** Die 3 Anwendungsszenarien in Kap. 6.4 müssen nicht real sein — konstruierte, aber plausibel begründete Cases reichen für eine konzeptionelle Arbeit.
