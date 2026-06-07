# Mainland China Access Plan

The current public site is hosted on GitHub Pages:

```text
https://yingzizhang-github.github.io/
```

GitHub Pages can be slow or intermittently unreachable from mainland China. A custom domain on GitHub Pages improves branding, but it does not move the hosting/CDN path into mainland China.

## Recommended Route

Use a mainland static host or CDN mirror:

1. Buy or choose a domain, for example `yingzizhang.cn` or a subdomain such as `www.yingzizhang.cn`.
2. Complete ICP filing for the domain with the mainland provider that will host or accelerate the site.
3. Host the static files on a mainland-capable static service, such as Alibaba Cloud OSS + CDN, Tencent Cloud COS + CDN, Huawei Cloud OBS + CDN, or Cloudflare China Network.
4. Point DNS for the mainland domain to that provider.
5. Keep GitHub Pages as the international fallback.

Alibaba Cloud OSS is a good fit for this site because the site is static HTML, CSS, JavaScript, and assets only.

## Package The Site

Create an upload-ready static bundle:

```bash
./scripts/package-static-site.sh
```

The output is written to:

```text
dist/static-site/
```

Upload the contents of that directory to the mainland static host. The upload root must contain `index.html`, `styles.css`, `script.js`, `robots.txt`, `sitemap.xml`, and `assets/`.

## Alibaba OSS Checklist

1. Create an OSS bucket in a mainland China region.
2. Enable static website hosting.
3. Set `index.html` as the default homepage.
4. Upload all files from `dist/static-site/`.
5. Bind the ICP-filed custom domain to the bucket or CDN distribution.
6. Configure HTTPS for the custom domain.
7. Open the final mainland URL from a mainland network and verify these paths:

```text
/
/styles.css
/script.js
/assets/Yingzi_profile_github.jpg
/assets/Yingzi_Zhang_CV_202605.pdf
```

## Tencent COS / Huawei OBS Checklist

The same static bundle can be uploaded to Tencent COS or Huawei OBS:

1. Create a bucket in a mainland China region.
2. Enable static website hosting.
3. Upload all files from `dist/static-site/`.
4. Bind an ICP-filed custom domain.
5. Enable CDN and HTTPS.
6. Verify the same paths listed above.

## After The Mainland Domain Is Live

Update these files to include the final mainland URL:

- `index.html`: add the mainland URL to structured data `sameAs` or use it as canonical if it becomes the primary public site.
- `sitemap.xml`: add the mainland URL or replace the GitHub Pages URL if the mainland domain becomes primary.
- `robots.txt`: point `Sitemap:` to the canonical domain.
- `README.md`: record the active mainland URL and provider.

Do not remove the GitHub Pages deployment unless the mainland domain is verified from both mainland China and outside China.

## Reference Links

- Alibaba Cloud OSS ICP filing requirements: https://www.alibabacloud.com/help/en/icp-filing/basic-icp-service/product-overview/use-oss
- Alibaba Cloud OSS static website hosting: https://www.alibabacloud.com/help/en/oss/user-guide/tutorial-use-a-custom-domain-name-to-configure-static-website-hosting
- Cloudflare China Network requirements: https://developers.cloudflare.com/china-network/
- GitHub Pages custom domains: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site
