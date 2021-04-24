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
-- Module      : Network.AWS.Config.PutOrganizationConformancePack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploys conformance packs across member accounts in an AWS Organization.
--
--
-- Only a master account and a delegated administrator can call this API. When calling this API with a delegated administrator, you must ensure AWS Organizations @ListDelegatedAdministrator@ permissions are added.
--
-- This API enables organization service access for @config-multiaccountsetup.amazonaws.com@ through the @EnableAWSServiceAccess@ action and creates a service linked role @AWSServiceRoleForConfigMultiAccountSetup@ in the master or delegated administrator account of your organization. The service linked role is created only when the role does not exist in the caller account. To use this API with delegated administrator, register a delegated administrator by calling AWS Organization @register-delegate-admin@ for @config-multiaccountsetup.amazonaws.com@ .
module Network.AWS.Config.PutOrganizationConformancePack
  ( -- * Creating a Request
    putOrganizationConformancePack,
    PutOrganizationConformancePack,

    -- * Request Lenses
    pocpTemplateS3URI,
    pocpDeliveryS3Bucket,
    pocpDeliveryS3KeyPrefix,
    pocpExcludedAccounts,
    pocpTemplateBody,
    pocpConformancePackInputParameters,
    pocpOrganizationConformancePackName,

    -- * Destructuring the Response
    putOrganizationConformancePackResponse,
    PutOrganizationConformancePackResponse,

    -- * Response Lenses
    pocprrsOrganizationConformancePackARN,
    pocprrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putOrganizationConformancePack' smart constructor.
data PutOrganizationConformancePack = PutOrganizationConformancePack'
  { _pocpTemplateS3URI ::
      !( Maybe
           Text
       ),
    _pocpDeliveryS3Bucket ::
      !( Maybe
           Text
       ),
    _pocpDeliveryS3KeyPrefix ::
      !( Maybe
           Text
       ),
    _pocpExcludedAccounts ::
      !( Maybe
           [Text]
       ),
    _pocpTemplateBody ::
      !( Maybe
           Text
       ),
    _pocpConformancePackInputParameters ::
      !( Maybe
           [ConformancePackInputParameter]
       ),
    _pocpOrganizationConformancePackName ::
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

-- | Creates a value of 'PutOrganizationConformancePack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pocpTemplateS3URI' - Location of file containing the template body. The uri must point to the conformance pack template (max size: 300 KB).
--
-- * 'pocpDeliveryS3Bucket' - Amazon S3 bucket where AWS Config stores conformance pack templates.
--
-- * 'pocpDeliveryS3KeyPrefix' - The prefix for the Amazon S3 bucket.
--
-- * 'pocpExcludedAccounts' - A list of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack.
--
-- * 'pocpTemplateBody' - A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.
--
-- * 'pocpConformancePackInputParameters' - A list of @ConformancePackInputParameter@ objects.
--
-- * 'pocpOrganizationConformancePackName' - Name of the organization conformance pack you want to create.
putOrganizationConformancePack ::
  -- | 'pocpOrganizationConformancePackName'
  Text ->
  PutOrganizationConformancePack
putOrganizationConformancePack
  pOrganizationConformancePackName_ =
    PutOrganizationConformancePack'
      { _pocpTemplateS3URI =
          Nothing,
        _pocpDeliveryS3Bucket = Nothing,
        _pocpDeliveryS3KeyPrefix = Nothing,
        _pocpExcludedAccounts = Nothing,
        _pocpTemplateBody = Nothing,
        _pocpConformancePackInputParameters =
          Nothing,
        _pocpOrganizationConformancePackName =
          pOrganizationConformancePackName_
      }

-- | Location of file containing the template body. The uri must point to the conformance pack template (max size: 300 KB).
pocpTemplateS3URI :: Lens' PutOrganizationConformancePack (Maybe Text)
pocpTemplateS3URI = lens _pocpTemplateS3URI (\s a -> s {_pocpTemplateS3URI = a})

-- | Amazon S3 bucket where AWS Config stores conformance pack templates.
pocpDeliveryS3Bucket :: Lens' PutOrganizationConformancePack (Maybe Text)
pocpDeliveryS3Bucket = lens _pocpDeliveryS3Bucket (\s a -> s {_pocpDeliveryS3Bucket = a})

-- | The prefix for the Amazon S3 bucket.
pocpDeliveryS3KeyPrefix :: Lens' PutOrganizationConformancePack (Maybe Text)
pocpDeliveryS3KeyPrefix = lens _pocpDeliveryS3KeyPrefix (\s a -> s {_pocpDeliveryS3KeyPrefix = a})

-- | A list of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack.
pocpExcludedAccounts :: Lens' PutOrganizationConformancePack [Text]
pocpExcludedAccounts = lens _pocpExcludedAccounts (\s a -> s {_pocpExcludedAccounts = a}) . _Default . _Coerce

-- | A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.
pocpTemplateBody :: Lens' PutOrganizationConformancePack (Maybe Text)
pocpTemplateBody = lens _pocpTemplateBody (\s a -> s {_pocpTemplateBody = a})

-- | A list of @ConformancePackInputParameter@ objects.
pocpConformancePackInputParameters :: Lens' PutOrganizationConformancePack [ConformancePackInputParameter]
pocpConformancePackInputParameters = lens _pocpConformancePackInputParameters (\s a -> s {_pocpConformancePackInputParameters = a}) . _Default . _Coerce

-- | Name of the organization conformance pack you want to create.
pocpOrganizationConformancePackName :: Lens' PutOrganizationConformancePack Text
pocpOrganizationConformancePackName = lens _pocpOrganizationConformancePackName (\s a -> s {_pocpOrganizationConformancePackName = a})

instance AWSRequest PutOrganizationConformancePack where
  type
    Rs PutOrganizationConformancePack =
      PutOrganizationConformancePackResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          PutOrganizationConformancePackResponse'
            <$> (x .?> "OrganizationConformancePackArn")
            <*> (pure (fromEnum s))
      )

instance Hashable PutOrganizationConformancePack

instance NFData PutOrganizationConformancePack

instance ToHeaders PutOrganizationConformancePack where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.PutOrganizationConformancePack" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutOrganizationConformancePack where
  toJSON PutOrganizationConformancePack' {..} =
    object
      ( catMaybes
          [ ("TemplateS3Uri" .=) <$> _pocpTemplateS3URI,
            ("DeliveryS3Bucket" .=) <$> _pocpDeliveryS3Bucket,
            ("DeliveryS3KeyPrefix" .=)
              <$> _pocpDeliveryS3KeyPrefix,
            ("ExcludedAccounts" .=) <$> _pocpExcludedAccounts,
            ("TemplateBody" .=) <$> _pocpTemplateBody,
            ("ConformancePackInputParameters" .=)
              <$> _pocpConformancePackInputParameters,
            Just
              ( "OrganizationConformancePackName"
                  .= _pocpOrganizationConformancePackName
              )
          ]
      )

instance ToPath PutOrganizationConformancePack where
  toPath = const "/"

instance ToQuery PutOrganizationConformancePack where
  toQuery = const mempty

-- | /See:/ 'putOrganizationConformancePackResponse' smart constructor.
data PutOrganizationConformancePackResponse = PutOrganizationConformancePackResponse'
  { _pocprrsOrganizationConformancePackARN ::
      !( Maybe
           Text
       ),
    _pocprrsResponseStatus ::
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

-- | Creates a value of 'PutOrganizationConformancePackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pocprrsOrganizationConformancePackARN' - ARN of the organization conformance pack.
--
-- * 'pocprrsResponseStatus' - -- | The response status code.
putOrganizationConformancePackResponse ::
  -- | 'pocprrsResponseStatus'
  Int ->
  PutOrganizationConformancePackResponse
putOrganizationConformancePackResponse
  pResponseStatus_ =
    PutOrganizationConformancePackResponse'
      { _pocprrsOrganizationConformancePackARN =
          Nothing,
        _pocprrsResponseStatus =
          pResponseStatus_
      }

-- | ARN of the organization conformance pack.
pocprrsOrganizationConformancePackARN :: Lens' PutOrganizationConformancePackResponse (Maybe Text)
pocprrsOrganizationConformancePackARN = lens _pocprrsOrganizationConformancePackARN (\s a -> s {_pocprrsOrganizationConformancePackARN = a})

-- | -- | The response status code.
pocprrsResponseStatus :: Lens' PutOrganizationConformancePackResponse Int
pocprrsResponseStatus = lens _pocprrsResponseStatus (\s a -> s {_pocprrsResponseStatus = a})

instance
  NFData
    PutOrganizationConformancePackResponse
