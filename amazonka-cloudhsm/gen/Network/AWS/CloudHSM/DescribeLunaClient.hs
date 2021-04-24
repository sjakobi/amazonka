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
-- Module      : Network.AWS.CloudHSM.DescribeLunaClient
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
--
-- Retrieves information about an HSM client.
module Network.AWS.CloudHSM.DescribeLunaClient
  ( -- * Creating a Request
    describeLunaClient,
    DescribeLunaClient,

    -- * Request Lenses
    dClientARN,
    dCertificateFingerprint,

    -- * Destructuring the Response
    describeLunaClientResponse,
    DescribeLunaClientResponse,

    -- * Response Lenses
    dlcrrsLastModifiedTimestamp,
    dlcrrsClientARN,
    dlcrrsLabel,
    dlcrrsCertificate,
    dlcrrsCertificateFingerprint,
    dlcrrsResponseStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLunaClient' smart constructor.
data DescribeLunaClient = DescribeLunaClient'
  { _dClientARN ::
      !(Maybe Text),
    _dCertificateFingerprint ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeLunaClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dClientARN' - The ARN of the client.
--
-- * 'dCertificateFingerprint' - The certificate fingerprint.
describeLunaClient ::
  DescribeLunaClient
describeLunaClient =
  DescribeLunaClient'
    { _dClientARN = Nothing,
      _dCertificateFingerprint = Nothing
    }

-- | The ARN of the client.
dClientARN :: Lens' DescribeLunaClient (Maybe Text)
dClientARN = lens _dClientARN (\s a -> s {_dClientARN = a})

-- | The certificate fingerprint.
dCertificateFingerprint :: Lens' DescribeLunaClient (Maybe Text)
dCertificateFingerprint = lens _dCertificateFingerprint (\s a -> s {_dCertificateFingerprint = a})

instance AWSRequest DescribeLunaClient where
  type
    Rs DescribeLunaClient =
      DescribeLunaClientResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          DescribeLunaClientResponse'
            <$> (x .?> "LastModifiedTimestamp")
            <*> (x .?> "ClientArn")
            <*> (x .?> "Label")
            <*> (x .?> "Certificate")
            <*> (x .?> "CertificateFingerprint")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLunaClient

instance NFData DescribeLunaClient

instance ToHeaders DescribeLunaClient where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CloudHsmFrontendService.DescribeLunaClient" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeLunaClient where
  toJSON DescribeLunaClient' {..} =
    object
      ( catMaybes
          [ ("ClientArn" .=) <$> _dClientARN,
            ("CertificateFingerprint" .=)
              <$> _dCertificateFingerprint
          ]
      )

instance ToPath DescribeLunaClient where
  toPath = const "/"

instance ToQuery DescribeLunaClient where
  toQuery = const mempty

-- | /See:/ 'describeLunaClientResponse' smart constructor.
data DescribeLunaClientResponse = DescribeLunaClientResponse'
  { _dlcrrsLastModifiedTimestamp ::
      !(Maybe Text),
    _dlcrrsClientARN ::
      !(Maybe Text),
    _dlcrrsLabel ::
      !(Maybe Text),
    _dlcrrsCertificate ::
      !(Maybe Text),
    _dlcrrsCertificateFingerprint ::
      !(Maybe Text),
    _dlcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLunaClientResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlcrrsLastModifiedTimestamp' - The date and time the client was last modified.
--
-- * 'dlcrrsClientARN' - The ARN of the client.
--
-- * 'dlcrrsLabel' - The label of the client.
--
-- * 'dlcrrsCertificate' - The certificate installed on the HSMs used by this client.
--
-- * 'dlcrrsCertificateFingerprint' - The certificate fingerprint.
--
-- * 'dlcrrsResponseStatus' - -- | The response status code.
describeLunaClientResponse ::
  -- | 'dlcrrsResponseStatus'
  Int ->
  DescribeLunaClientResponse
describeLunaClientResponse pResponseStatus_ =
  DescribeLunaClientResponse'
    { _dlcrrsLastModifiedTimestamp =
        Nothing,
      _dlcrrsClientARN = Nothing,
      _dlcrrsLabel = Nothing,
      _dlcrrsCertificate = Nothing,
      _dlcrrsCertificateFingerprint = Nothing,
      _dlcrrsResponseStatus = pResponseStatus_
    }

-- | The date and time the client was last modified.
dlcrrsLastModifiedTimestamp :: Lens' DescribeLunaClientResponse (Maybe Text)
dlcrrsLastModifiedTimestamp = lens _dlcrrsLastModifiedTimestamp (\s a -> s {_dlcrrsLastModifiedTimestamp = a})

-- | The ARN of the client.
dlcrrsClientARN :: Lens' DescribeLunaClientResponse (Maybe Text)
dlcrrsClientARN = lens _dlcrrsClientARN (\s a -> s {_dlcrrsClientARN = a})

-- | The label of the client.
dlcrrsLabel :: Lens' DescribeLunaClientResponse (Maybe Text)
dlcrrsLabel = lens _dlcrrsLabel (\s a -> s {_dlcrrsLabel = a})

-- | The certificate installed on the HSMs used by this client.
dlcrrsCertificate :: Lens' DescribeLunaClientResponse (Maybe Text)
dlcrrsCertificate = lens _dlcrrsCertificate (\s a -> s {_dlcrrsCertificate = a})

-- | The certificate fingerprint.
dlcrrsCertificateFingerprint :: Lens' DescribeLunaClientResponse (Maybe Text)
dlcrrsCertificateFingerprint = lens _dlcrrsCertificateFingerprint (\s a -> s {_dlcrrsCertificateFingerprint = a})

-- | -- | The response status code.
dlcrrsResponseStatus :: Lens' DescribeLunaClientResponse Int
dlcrrsResponseStatus = lens _dlcrrsResponseStatus (\s a -> s {_dlcrrsResponseStatus = a})

instance NFData DescribeLunaClientResponse
