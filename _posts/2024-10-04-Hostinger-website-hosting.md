---
layout: post
title: "How to Link Your Website to Hostinger"
date: 2024-10-04
categories: [web hosting, Hostinger, guide]
---

Linking your website to the Hostinger platform involves a few key steps, including domain registration (if you haven’t already), setting up hosting, and configuring your domain settings. Here’s a step-by-step guide:

## Step 1: Sign Up for Hostinger

1. **Visit Hostinger’s Website**: Go to [Hostinger](https://www.hostinger.com).
2. **Choose a Hosting Plan**: Select a plan that suits your needs (e.g., Shared Hosting, WordPress Hosting, VPS).
3. **Create an Account**: Fill in your email and create a password to register.
4. **Payment**: Enter your payment details to complete the purchase.

## Step 2: Register or Transfer Your Domain

1. **Domain Registration**:
   - If you don’t have a domain, you can register one through Hostinger during the signup process.
   - Search for your desired domain name and follow the prompts to register it.

2. **Domain Transfer**:
   - If you already have a domain registered with another provider, you’ll need to transfer it to Hostinger or point it to Hostinger’s servers.
   - To transfer, unlock your domain at your current registrar and obtain the authorization code. Then, initiate the transfer in your Hostinger account.

## Step 3: Access Your Hostinger Control Panel

1. **Log In**: Go to Hostinger and log into your account.
2. **Navigate to the hPanel**: You’ll be taken to the Hostinger control panel (hPanel) where you can manage your hosting and domains.

## Step 4: Add Your Domain to Hostinger

1. **Find the “Domains” Section**: In the hPanel, look for the “Domains” or “Manage Domains” section.
2. **Add Your Domain**: Click on “Add Website” and enter your domain name. Follow any additional prompts to connect your domain to your hosting account.

## Step 5: Configure DNS Settings

1. **Access DNS Settings**: In the hPanel, find the DNS Zone Editor or DNS Settings section.
2. **Set Up A Records**: 
   - If your domain is registered elsewhere, update your domain’s A records to point to Hostinger's IP address. You can find this IP address in the hPanel under your hosting details.
   - If your domain is registered with Hostinger, this should already be set up.

3. **Update Nameservers** (if applicable):
   - If you registered your domain elsewhere, change the nameservers to Hostinger’s. Typically, they look like:
     - `ns1.dns-parking.com`
     - `ns2.dns-parking.com`
   - This information is available in the hPanel.

## Step 6: Upload Your Website Files

1. **Access File Manager**: In the hPanel, locate the “File Manager” section.
2. **Upload Files**: If you have existing website files, upload them to the `public_html` directory. If you’re using a CMS like WordPress, you can install it through the hPanel.

## Step 7: Test Your Website

1. **Check Your Website**: Once everything is set up, open a web browser and enter your domain name.
2. **Wait for DNS Propagation**: If your website doesn’t appear immediately, wait up to 24-48 hours for DNS changes to propagate.

## Step 8: Set Up SSL (Optional but Recommended)

1. **Enable SSL**: In the hPanel, find the “SSL” option and enable it for your domain. This will secure your website with HTTPS.
2. **Follow Prompts**: Hostinger typically provides free SSL certificates, so follow the prompts to set this up.


