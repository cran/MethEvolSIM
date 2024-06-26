% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multiRegion_SIM.R
\name{combiStructureGenerator}
\alias{combiStructureGenerator}
\title{combiStructureGenerator}
\description{
an R6 class representing several genomic structures.
Each genomic structure contained is an object of class singleStructureGenerator.
Note that default clone(deep=TRUE) fails to clone singleStructureGenerator objects contained, use method $copy() instead.
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-combiStructureGenerator-new}{\code{combiStructureGenerator$new()}}
\item \href{#method-combiStructureGenerator-get_singleStr}{\code{combiStructureGenerator$get_singleStr()}}
\item \href{#method-combiStructureGenerator-get_singleStr_number}{\code{combiStructureGenerator$get_singleStr_number()}}
\item \href{#method-combiStructureGenerator-get_island_number}{\code{combiStructureGenerator$get_island_number()}}
\item \href{#method-combiStructureGenerator-get_island_index}{\code{combiStructureGenerator$get_island_index()}}
\item \href{#method-combiStructureGenerator-set_IWE_events}{\code{combiStructureGenerator$set_IWE_events()}}
\item \href{#method-combiStructureGenerator-get_IWE_events}{\code{combiStructureGenerator$get_IWE_events()}}
\item \href{#method-combiStructureGenerator-set_name}{\code{combiStructureGenerator$set_name()}}
\item \href{#method-combiStructureGenerator-get_name}{\code{combiStructureGenerator$get_name()}}
\item \href{#method-combiStructureGenerator-get_own_index}{\code{combiStructureGenerator$get_own_index()}}
\item \href{#method-combiStructureGenerator-set_own_index}{\code{combiStructureGenerator$set_own_index()}}
\item \href{#method-combiStructureGenerator-get_parent_index}{\code{combiStructureGenerator$get_parent_index()}}
\item \href{#method-combiStructureGenerator-set_parent_index}{\code{combiStructureGenerator$set_parent_index()}}
\item \href{#method-combiStructureGenerator-get_offspring_index}{\code{combiStructureGenerator$get_offspring_index()}}
\item \href{#method-combiStructureGenerator-set_offspring_index}{\code{combiStructureGenerator$set_offspring_index()}}
\item \href{#method-combiStructureGenerator-add_offspring_index}{\code{combiStructureGenerator$add_offspring_index()}}
\item \href{#method-combiStructureGenerator-get_mu}{\code{combiStructureGenerator$get_mu()}}
\item \href{#method-combiStructureGenerator-set_singleStr}{\code{combiStructureGenerator$set_singleStr()}}
\item \href{#method-combiStructureGenerator-copy}{\code{combiStructureGenerator$copy()}}
\item \href{#method-combiStructureGenerator-branch_evol}{\code{combiStructureGenerator$branch_evol()}}
\item \href{#method-combiStructureGenerator-clone}{\code{combiStructureGenerator$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-new"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-new}{}}}
\subsection{Method \code{new()}}{
Create a new combiStructureGenerator object.

Note that this object can be generated within a treeMultiRegionSimulator object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$new(infoStr, params = NULL, testing = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{infoStr}}{A data frame containing columns 'n' for the number of sites, and 'globalState' for the favoured global methylation state.
If initial equilibrium frequencies are given the dataframe must contain 3 additional columns: 'u_eqFreq', 'p_eqFreq' and 'm_eqFreq'}

\item{\code{params}}{Default NULL. When given: data frame containing model parameters.}

\item{\code{testing}}{Default FALSE. TRUE for testing output.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new \code{combiStructureGenerator} object.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_singleStr"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_singleStr}{}}}
\subsection{Method \code{get_singleStr()}}{
Public method: Get one singleStructureGenerator object in $singleStr
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_singleStr(i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{i}}{index of the singleStructureGenerator object in $singleStr}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
the singleStructureGenerator object in $singleStr with index i
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_singleStr_number"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_singleStr_number}{}}}
\subsection{Method \code{get_singleStr_number()}}{
Public method: Get number of singleStructureGenerator objects in $singleStr
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_singleStr_number()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
number of singleStructureGenerator object contained in $singleStr
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_island_number"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_island_number}{}}}
\subsection{Method \code{get_island_number()}}{
Public method: Get number of singleStructureGenerator objects in $singleStr with $globalState "U" (CpG islands)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_island_number()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
number of singleStructureGenerator in $singleStr objects with $globalState "U" (CpG islands)
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_island_index"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_island_index}{}}}
\subsection{Method \code{get_island_index()}}{
Public method: Get index of singleStructureGenerator objects in $singleStr with $globalState "U" (CpG islands)
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_island_index()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
index of singleStructureGenerator objects in $singleStr with $globalState "U" (CpG islands)
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-set_IWE_events"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-set_IWE_events}{}}}
\subsection{Method \code{set_IWE_events()}}{
Public method: Set information of the IWE events sampled in a tree branch
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$set_IWE_events(a)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{a}}{value to which IWE_events should be set}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
NULL
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_IWE_events"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_IWE_events}{}}}
\subsection{Method \code{get_IWE_events()}}{
Public method: Get information of the IWE events sampled in a tree branch
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_IWE_events()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
information of the IWE events sampled in a tree branch
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-set_name"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-set_name}{}}}
\subsection{Method \code{set_name()}}{
Public method: Set the name of the leaf if evolutionary process
(simulated from class treeMultiRegionSimulator) ends in a tree leaf.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$set_name(a)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{a}}{value to which name should be set}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
NULL
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_name"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_name}{}}}
\subsection{Method \code{get_name()}}{
Public method: Get the name of the leaf if evolutionary process
(simulated from class treeMultiRegionSimulator) ended in a tree leaf.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_name()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Name of the leaf if evolutionary process
(simulated from class treeMultiRegionSimulator) ended in a tree leaf.
For iner tree nodes return NULL
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_own_index"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_own_index}{}}}
\subsection{Method \code{get_own_index()}}{
Public method: Set own branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_own_index()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
NULL
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-set_own_index"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-set_own_index}{}}}
\subsection{Method \code{set_own_index()}}{
Public method: Get own branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$set_own_index(i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{i}}{index of focal object}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Own branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_parent_index"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_parent_index}{}}}
\subsection{Method \code{get_parent_index()}}{
Public method: Get parent branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_parent_index()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Parent branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-set_parent_index"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-set_parent_index}{}}}
\subsection{Method \code{set_parent_index()}}{
Public method: Set parent branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$set_parent_index(i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{i}}{set parent_index to this value}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
NULL
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_offspring_index"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_offspring_index}{}}}
\subsection{Method \code{get_offspring_index()}}{
Public method: Get offspring branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_offspring_index()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Offspring branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-set_offspring_index"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-set_offspring_index}{}}}
\subsection{Method \code{set_offspring_index()}}{
Public method: Set offspring branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$set_offspring_index(i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{i}}{set offspring_index to this value}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
NULL
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-add_offspring_index"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-add_offspring_index}{}}}
\subsection{Method \code{add_offspring_index()}}{
Public method: Add offspring branch index in the tree
along which the evolutionary process is simulated
(from class treeMultiRegionSimulator).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$add_offspring_index(i)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{i}}{index to be added}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
NULL
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-get_mu"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-get_mu}{}}}
\subsection{Method \code{get_mu()}}{
Public method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$get_mu()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Model parameter for the rate of the IWE evolutionary process (per island and branch length).
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-set_singleStr"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-set_singleStr}{}}}
\subsection{Method \code{set_singleStr()}}{
Public method: Clone each singleStructureGenerator object in $singleStr
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$set_singleStr(singStrList)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{singStrList}}{object to be cloned}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
NULL
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-copy"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-copy}{}}}
\subsection{Method \code{copy()}}{
Public method: Clone combiStructureGenerator object and all singleStructureGenerator objects in it
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$copy()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
cloned combiStructureGenerator object
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-branch_evol"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-branch_evol}{}}}
\subsection{Method \code{branch_evol()}}{
Simulate CpG dinucleotide methylation state evolution along a tree branch.
The function samples the IWE events on the tree branch and simulates the
evolution through the SSE and IWE processes.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$branch_evol(branch_length, dt, testing = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{branch_length}}{Length of the branch.}

\item{\code{dt}}{Length of SSE time steps.}

\item{\code{testing}}{Default FALSE. TRUE for testing purposes.}
}
\if{html}{\out{</div>}}
}
\subsection{Details}{
It handles both cases where IWE events are sampled or not sampled within the branch.
}

\subsection{Returns}{
Default NULL. If testing = TRUE it returns information for testing purposes.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-combiStructureGenerator-clone"></a>}}
\if{latex}{\out{\hypertarget{method-combiStructureGenerator-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{combiStructureGenerator$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
