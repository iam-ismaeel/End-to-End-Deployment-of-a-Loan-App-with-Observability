# Assets Documentation

This directory contains all visual assets, screenshots, and diagrams for the Government Loan Validator project.

## 📁 Folder Structure

### `/architecture-Diagrams/`
Contains system architecture diagrams in PNG/SVG format:
- **high-level-architecture.png**: Overall system architecture
- **infrastructure-diagram.png**: AWS infrastructure components
- **deployment-flow.svg**: CI/CD pipeline flow
- **network-topology.png**: Network architecture

### `/screenshots/`
Organized screenshots by category:

#### `/ci-cd-pipeline/`
- GitHub Actions workflow successes
- Security scanning results (Trivy)
- Docker build outputs

#### `/deployment/`
- ArgoCD application sync status
- Kubernetes resource states
- Deployment success confirmations

#### `/observability/`
- Datadog dashboards
- Tracing and logging views

#### `/security/`
- Vulnerability reports
- Compliance dashboards
- Security tool outputs

## 📸 Taking Good Screenshots

### Best Practices:
1. **Naming Convention**: Use descriptive names (e.g., `github-actions-pipeline-success-2024.png`)
2. **Resolution**: Minimum 1920x1080 for clarity
3. **Annotations**: Add red boxes/arrows to highlight important areas
4. **Consistency**: Use same browser/theme for similar screenshots
5. **Privacy**: Blur or redact sensitive information (tokens, IPs, emails)

### Tools for Annotating:
- **macOS**: Preview app or Skitch
- **Windows**: Snipping Tool or Greenshot
- **Linux**: Flameshot or Shutter
- **Cross-platform**: Monosnap, Lightshot

## 🖼️ Image Optimization

### Before Committing:
1. **Compress images**: Use tools to reduce file size
   ```bash
   # Install image optimization tools
   brew install imagemagick  # macOS
   sudo apt-get install imagemagick  # Ubuntu
   
   # Optimize PNG files
   find ./assets -name "*.png" -exec optipng -o5 {} \;
   
   # Compress JPEG files
   find ./assets -name "*.jpg" -exec jpegoptim --max=90 {} \;