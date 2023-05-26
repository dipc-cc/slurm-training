---
title: Examples
nav: true
---

# Examples

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
  }

  .info-box p {
    font-size: 16px;
    line-height: 1.5;
    color: #333;
  }

  .info-box .additional-info {
    margin-top: 20px;
    padding: 10px;
    background-color: #f9f9f9;
    border: 1px solid #e6eaf2;
    border-radius: 4px;
    display: none; /* Collapsed by default */
  }

  .info-box .additional-info-toggle {
    cursor: pointer;
    color: #0085ff;
    font-weight: bold;
    text-decoration: underline;
  }
</style>



<div class="info-box">
  <div class="additional-info-toggle">Show Solution</div>
  <div class="additional-info">
```bash
Here We have the bash script
```

<script>
  var additionalInfoToggle = document.querySelector('.additional-info-toggle');
  var additionalInfo = document.querySelector('.additional-info');

  additionalInfoToggle.addEventListener('click', function() {
    if (additionalInfo.style.display === 'none' || additionalInfo.style.display === '') {
      additionalInfo.style.display = 'block';
      additionalInfoToggle.textContent = 'Hide Solution';
    } else {
      additionalInfo.style.display = 'none';
      additionalInfoToggle.textContent = 'Show Solution';
    }
  });
</script>



