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
-- Module      : Network.AWS.Config.PutConformancePack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a conformance pack. A conformance pack is a collection of AWS Config rules that can be easily deployed in an account and a region and across AWS Organization.
--
--
-- This API creates a service linked role @AWSServiceRoleForConfigConforms@ in your account. The service linked role is created only when the role does not exist in your account.
module Network.AWS.Config.PutConformancePack
  ( -- * Creating a Request
    putConformancePack,
    PutConformancePack,

    -- * Request Lenses
    pcpTemplateS3URI,
    pcpDeliveryS3Bucket,
    pcpDeliveryS3KeyPrefix,
    pcpTemplateBody,
    pcpConformancePackInputParameters,
    pcpConformancePackName,

    -- * Destructuring the Response
    putConformancePackResponse,
    PutConformancePackResponse,

    -- * Response Lenses
    pcprrsConformancePackARN,
    pcprrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putConformancePack' smart constructor.
data PutConformancePack = PutConformancePack'
  { _pcpTemplateS3URI ::
      !(Maybe Text),
    _pcpDeliveryS3Bucket ::
      !(Maybe Text),
    _pcpDeliveryS3KeyPrefix ::
      !(Maybe Text),
    _pcpTemplateBody :: !(Maybe Text),
    _pcpConformancePackInputParameters ::
      !( Maybe
           [ConformancePackInputParameter]
       ),
    _pcpConformancePackName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutConformancePack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcpTemplateS3URI' - Location of file containing the template body (@s3://bucketname/prefix@ ). The uri must point to the conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same region as the conformance pack.
--
-- * 'pcpDeliveryS3Bucket' - Amazon S3 bucket where AWS Config stores conformance pack templates.
--
-- * 'pcpDeliveryS3KeyPrefix' - The prefix for the Amazon S3 bucket.
--
-- * 'pcpTemplateBody' - A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.
--
-- * 'pcpConformancePackInputParameters' - A list of @ConformancePackInputParameter@ objects.
--
-- * 'pcpConformancePackName' - Name of the conformance pack you want to create.
putConformancePack ::
  -- | 'pcpConformancePackName'
  Text ->
  PutConformancePack
putConformancePack pConformancePackName_ =
  PutConformancePack'
    { _pcpTemplateS3URI = Nothing,
      _pcpDeliveryS3Bucket = Nothing,
      _pcpDeliveryS3KeyPrefix = Nothing,
      _pcpTemplateBody = Nothing,
      _pcpConformancePackInputParameters = Nothing,
      _pcpConformancePackName = pConformancePackName_
    }

-- | Location of file containing the template body (@s3://bucketname/prefix@ ). The uri must point to the conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same region as the conformance pack.
pcpTemplateS3URI :: Lens' PutConformancePack (Maybe Text)
pcpTemplateS3URI = lens _pcpTemplateS3URI (\s a -> s {_pcpTemplateS3URI = a})

-- | Amazon S3 bucket where AWS Config stores conformance pack templates.
pcpDeliveryS3Bucket :: Lens' PutConformancePack (Maybe Text)
pcpDeliveryS3Bucket = lens _pcpDeliveryS3Bucket (\s a -> s {_pcpDeliveryS3Bucket = a})

-- | The prefix for the Amazon S3 bucket.
pcpDeliveryS3KeyPrefix :: Lens' PutConformancePack (Maybe Text)
pcpDeliveryS3KeyPrefix = lens _pcpDeliveryS3KeyPrefix (\s a -> s {_pcpDeliveryS3KeyPrefix = a})

-- | A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.
pcpTemplateBody :: Lens' PutConformancePack (Maybe Text)
pcpTemplateBody = lens _pcpTemplateBody (\s a -> s {_pcpTemplateBody = a})

-- | A list of @ConformancePackInputParameter@ objects.
pcpConformancePackInputParameters :: Lens' PutConformancePack [ConformancePackInputParameter]
pcpConformancePackInputParameters = lens _pcpConformancePackInputParameters (\s a -> s {_pcpConformancePackInputParameters = a}) . _Default . _Coerce

-- | Name of the conformance pack you want to create.
pcpConformancePackName :: Lens' PutConformancePack Text
pcpConformancePackName = lens _pcpConformancePackName (\s a -> s {_pcpConformancePackName = a})

instance AWSRequest PutConformancePack where
  type
    Rs PutConformancePack =
      PutConformancePackResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          PutConformancePackResponse'
            <$> (x .?> "ConformancePackArn") <*> (pure (fromEnum s))
      )

instance Hashable PutConformancePack

instance NFData PutConformancePack

instance ToHeaders PutConformancePack where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.PutConformancePack" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutConformancePack where
  toJSON PutConformancePack' {..} =
    object
      ( catMaybes
          [ ("TemplateS3Uri" .=) <$> _pcpTemplateS3URI,
            ("DeliveryS3Bucket" .=) <$> _pcpDeliveryS3Bucket,
            ("DeliveryS3KeyPrefix" .=)
              <$> _pcpDeliveryS3KeyPrefix,
            ("TemplateBody" .=) <$> _pcpTemplateBody,
            ("ConformancePackInputParameters" .=)
              <$> _pcpConformancePackInputParameters,
            Just
              ("ConformancePackName" .= _pcpConformancePackName)
          ]
      )

instance ToPath PutConformancePack where
  toPath = const "/"

instance ToQuery PutConformancePack where
  toQuery = const mempty

-- | /See:/ 'putConformancePackResponse' smart constructor.
data PutConformancePackResponse = PutConformancePackResponse'
  { _pcprrsConformancePackARN ::
      !(Maybe Text),
    _pcprrsResponseStatus ::
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

-- | Creates a value of 'PutConformancePackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcprrsConformancePackARN' - ARN of the conformance pack.
--
-- * 'pcprrsResponseStatus' - -- | The response status code.
putConformancePackResponse ::
  -- | 'pcprrsResponseStatus'
  Int ->
  PutConformancePackResponse
putConformancePackResponse pResponseStatus_ =
  PutConformancePackResponse'
    { _pcprrsConformancePackARN =
        Nothing,
      _pcprrsResponseStatus = pResponseStatus_
    }

-- | ARN of the conformance pack.
pcprrsConformancePackARN :: Lens' PutConformancePackResponse (Maybe Text)
pcprrsConformancePackARN = lens _pcprrsConformancePackARN (\s a -> s {_pcprrsConformancePackARN = a})

-- | -- | The response status code.
pcprrsResponseStatus :: Lens' PutConformancePackResponse Int
pcprrsResponseStatus = lens _pcprrsResponseStatus (\s a -> s {_pcprrsResponseStatus = a})

instance NFData PutConformancePackResponse
