---
title: Examples
nav: true
---

# Examples

Here I have the new usefull sbatch script examples.

<style>
  .info-box {
    background-color: #f0f8ff;
    padding: 20px;
    border: 1px solid #e6eaf2;
    border-radius: 4px;
    margin-bottom: 20px;
  }

  .info-box h3 {
    font-size: 20px;
    margin-bottom: 10px;
    color: #0085ff;
    cursor: pointer;
  }

  .info-box p {
    font-size: 16px;
    line-height: 1.5;
    color: #333;
  }

  .info-box .content {
    display: none; /* Collapsed by default */
  }
</style>

<div class="info-box">
  <h3 onclick="toggleInfoBox(this)">Click to toggle</h3>
  <div class="content">
    <p>This is the information inside the box.</p>
  </div>
</div>

<script>
  function toggleInfoBox(element) {
    var content = element.nextElementSibling;
    if (content.style.display === 'none' || content.style.display === '') {
      content.style.display = 'block';
    } else {
      content.style.display = 'none';
    }
  }
</script>

