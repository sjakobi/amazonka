{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.DescribeCertificateAuthorityAuditReport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about a specific audit report created by calling the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html CreateCertificateAuthorityAuditReport> action. Audit information is created every time the certificate authority (CA) private key is used. The private key is used when you call the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html IssueCertificate> action or the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html RevokeCertificate> action.
module Network.AWS.CertificateManagerPCA.DescribeCertificateAuthorityAuditReport
  ( -- * Creating a Request
    describeCertificateAuthorityAuditReport,
    DescribeCertificateAuthorityAuditReport,

    -- * Request Lenses
    dcaarCertificateAuthorityARN,
    dcaarAuditReportId,

    -- * Destructuring the Response
    describeCertificateAuthorityAuditReportResponse,
    DescribeCertificateAuthorityAuditReportResponse,

    -- * Response Lenses
    dcaarrrsAuditReportStatus,
    dcaarrrsCreatedAt,
    dcaarrrsS3Key,
    dcaarrrsS3BucketName,
    dcaarrrsResponseStatus,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeCertificateAuthorityAuditReport' smart constructor.
data DescribeCertificateAuthorityAuditReport = DescribeCertificateAuthorityAuditReport'
  { _dcaarCertificateAuthorityARN ::
      !Text,
    _dcaarAuditReportId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCertificateAuthorityAuditReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaarCertificateAuthorityARN' - The Amazon Resource Name (ARN) of the private CA. This must be of the form: @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @ .
--
-- * 'dcaarAuditReportId' - The report ID returned by calling the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html CreateCertificateAuthorityAuditReport> action.
describeCertificateAuthorityAuditReport ::
  -- | 'dcaarCertificateAuthorityARN'
  Text ->
  -- | 'dcaarAuditReportId'
  Text ->
  DescribeCertificateAuthorityAuditReport
describeCertificateAuthorityAuditReport
  pCertificateAuthorityARN_
  pAuditReportId_ =
    DescribeCertificateAuthorityAuditReport'
      { _dcaarCertificateAuthorityARN =
          pCertificateAuthorityARN_,
        _dcaarAuditReportId =
          pAuditReportId_
      }

-- | The Amazon Resource Name (ARN) of the private CA. This must be of the form: @arn:aws:acm-pca:/region/ :/account/ :certificate-authority//12345678-1234-1234-1234-123456789012/ @ .
dcaarCertificateAuthorityARN :: Lens' DescribeCertificateAuthorityAuditReport Text
dcaarCertificateAuthorityARN = lens _dcaarCertificateAuthorityARN (\s a -> s {_dcaarCertificateAuthorityARN = a})

-- | The report ID returned by calling the <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html CreateCertificateAuthorityAuditReport> action.
dcaarAuditReportId :: Lens' DescribeCertificateAuthorityAuditReport Text
dcaarAuditReportId = lens _dcaarAuditReportId (\s a -> s {_dcaarAuditReportId = a})

instance
  AWSRequest
    DescribeCertificateAuthorityAuditReport
  where
  type
    Rs DescribeCertificateAuthorityAuditReport =
      DescribeCertificateAuthorityAuditReportResponse
  request = postJSON certificateManagerPCA
  response =
    receiveJSON
      ( \s h x ->
          DescribeCertificateAuthorityAuditReportResponse'
            <$> (x .?> "AuditReportStatus")
            <*> (x .?> "CreatedAt")
            <*> (x .?> "S3Key")
            <*> (x .?> "S3BucketName")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeCertificateAuthorityAuditReport

instance
  NFData
    DescribeCertificateAuthorityAuditReport

instance
  ToHeaders
    DescribeCertificateAuthorityAuditReport
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ACMPrivateCA.DescribeCertificateAuthorityAuditReport" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeCertificateAuthorityAuditReport
  where
  toJSON DescribeCertificateAuthorityAuditReport' {..} =
    object
      ( catMaybes
          [ Just
              ( "CertificateAuthorityArn"
                  .= _dcaarCertificateAuthorityARN
              ),
            Just ("AuditReportId" .= _dcaarAuditReportId)
          ]
      )

instance
  ToPath
    DescribeCertificateAuthorityAuditReport
  where
  toPath = const "/"

instance
  ToQuery
    DescribeCertificateAuthorityAuditReport
  where
  toQuery = const mempty

-- | /See:/ 'describeCertificateAuthorityAuditReportResponse' smart constructor.
data DescribeCertificateAuthorityAuditReportResponse = DescribeCertificateAuthorityAuditReportResponse'
  { _dcaarrrsAuditReportStatus ::
      !( Maybe
           AuditReportStatus
       ),
    _dcaarrrsCreatedAt ::
      !( Maybe
           POSIX
       ),
    _dcaarrrsS3Key ::
      !( Maybe
           Text
       ),
    _dcaarrrsS3BucketName ::
      !( Maybe
           Text
       ),
    _dcaarrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCertificateAuthorityAuditReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcaarrrsAuditReportStatus' - Specifies whether report creation is in progress, has succeeded, or has failed.
--
-- * 'dcaarrrsCreatedAt' - The date and time at which the report was created.
--
-- * 'dcaarrrsS3Key' - S3 __key__ that uniquely identifies the report file in your S3 bucket.
--
-- * 'dcaarrrsS3BucketName' - Name of the S3 bucket that contains the report.
--
-- * 'dcaarrrsResponseStatus' - -- | The response status code.
describeCertificateAuthorityAuditReportResponse ::
  -- | 'dcaarrrsResponseStatus'
  Int ->
  DescribeCertificateAuthorityAuditReportResponse
describeCertificateAuthorityAuditReportResponse
  pResponseStatus_ =
    DescribeCertificateAuthorityAuditReportResponse'
      { _dcaarrrsAuditReportStatus =
          Nothing,
        _dcaarrrsCreatedAt =
          Nothing,
        _dcaarrrsS3Key = Nothing,
        _dcaarrrsS3BucketName =
          Nothing,
        _dcaarrrsResponseStatus =
          pResponseStatus_
      }

-- | Specifies whether report creation is in progress, has succeeded, or has failed.
dcaarrrsAuditReportStatus :: Lens' DescribeCertificateAuthorityAuditReportResponse (Maybe AuditReportStatus)
dcaarrrsAuditReportStatus = lens _dcaarrrsAuditReportStatus (\s a -> s {_dcaarrrsAuditReportStatus = a})

-- | The date and time at which the report was created.
dcaarrrsCreatedAt :: Lens' DescribeCertificateAuthorityAuditReportResponse (Maybe UTCTime)
dcaarrrsCreatedAt = lens _dcaarrrsCreatedAt (\s a -> s {_dcaarrrsCreatedAt = a}) . mapping _Time

-- | S3 __key__ that uniquely identifies the report file in your S3 bucket.
dcaarrrsS3Key :: Lens' DescribeCertificateAuthorityAuditReportResponse (Maybe Text)
dcaarrrsS3Key = lens _dcaarrrsS3Key (\s a -> s {_dcaarrrsS3Key = a})

-- | Name of the S3 bucket that contains the report.
dcaarrrsS3BucketName :: Lens' DescribeCertificateAuthorityAuditReportResponse (Maybe Text)
dcaarrrsS3BucketName = lens _dcaarrrsS3BucketName (\s a -> s {_dcaarrrsS3BucketName = a})

-- | -- | The response status code.
dcaarrrsResponseStatus :: Lens' DescribeCertificateAuthorityAuditReportResponse Int
dcaarrrsResponseStatus = lens _dcaarrrsResponseStatus (\s a -> s {_dcaarrrsResponseStatus = a})

instance
  NFData
    DescribeCertificateAuthorityAuditReportResponse
