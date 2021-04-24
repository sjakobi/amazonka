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
-- Module      : Network.AWS.IoT.DescribeProvisioningTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a fleet provisioning template.
module Network.AWS.IoT.DescribeProvisioningTemplate
  ( -- * Creating a Request
    describeProvisioningTemplate,
    DescribeProvisioningTemplate,

    -- * Request Lenses
    dptTemplateName,

    -- * Destructuring the Response
    describeProvisioningTemplateResponse,
    DescribeProvisioningTemplateResponse,

    -- * Response Lenses
    dptrrsTemplateName,
    dptrrsLastModifiedDate,
    dptrrsEnabled,
    dptrrsPreProvisioningHook,
    dptrrsCreationDate,
    dptrrsDefaultVersionId,
    dptrrsDescription,
    dptrrsProvisioningRoleARN,
    dptrrsTemplateBody,
    dptrrsTemplateARN,
    dptrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeProvisioningTemplate' smart constructor.
newtype DescribeProvisioningTemplate = DescribeProvisioningTemplate'
  { _dptTemplateName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeProvisioningTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dptTemplateName' - The name of the fleet provisioning template.
describeProvisioningTemplate ::
  -- | 'dptTemplateName'
  Text ->
  DescribeProvisioningTemplate
describeProvisioningTemplate pTemplateName_ =
  DescribeProvisioningTemplate'
    { _dptTemplateName =
        pTemplateName_
    }

-- | The name of the fleet provisioning template.
dptTemplateName :: Lens' DescribeProvisioningTemplate Text
dptTemplateName = lens _dptTemplateName (\s a -> s {_dptTemplateName = a})

instance AWSRequest DescribeProvisioningTemplate where
  type
    Rs DescribeProvisioningTemplate =
      DescribeProvisioningTemplateResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeProvisioningTemplateResponse'
            <$> (x .?> "templateName")
            <*> (x .?> "lastModifiedDate")
            <*> (x .?> "enabled")
            <*> (x .?> "preProvisioningHook")
            <*> (x .?> "creationDate")
            <*> (x .?> "defaultVersionId")
            <*> (x .?> "description")
            <*> (x .?> "provisioningRoleArn")
            <*> (x .?> "templateBody")
            <*> (x .?> "templateArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProvisioningTemplate

instance NFData DescribeProvisioningTemplate

instance ToHeaders DescribeProvisioningTemplate where
  toHeaders = const mempty

instance ToPath DescribeProvisioningTemplate where
  toPath DescribeProvisioningTemplate' {..} =
    mconcat
      ["/provisioning-templates/", toBS _dptTemplateName]

instance ToQuery DescribeProvisioningTemplate where
  toQuery = const mempty

-- | /See:/ 'describeProvisioningTemplateResponse' smart constructor.
data DescribeProvisioningTemplateResponse = DescribeProvisioningTemplateResponse'
  { _dptrrsTemplateName ::
      !( Maybe
           Text
       ),
    _dptrrsLastModifiedDate ::
      !( Maybe
           POSIX
       ),
    _dptrrsEnabled ::
      !( Maybe
           Bool
       ),
    _dptrrsPreProvisioningHook ::
      !( Maybe
           ProvisioningHook
       ),
    _dptrrsCreationDate ::
      !( Maybe
           POSIX
       ),
    _dptrrsDefaultVersionId ::
      !( Maybe
           Int
       ),
    _dptrrsDescription ::
      !( Maybe
           Text
       ),
    _dptrrsProvisioningRoleARN ::
      !( Maybe
           Text
       ),
    _dptrrsTemplateBody ::
      !( Maybe
           Text
       ),
    _dptrrsTemplateARN ::
      !( Maybe
           Text
       ),
    _dptrrsResponseStatus ::
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

-- | Creates a value of 'DescribeProvisioningTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dptrrsTemplateName' - The name of the fleet provisioning template.
--
-- * 'dptrrsLastModifiedDate' - The date when the fleet provisioning template was last modified.
--
-- * 'dptrrsEnabled' - True if the fleet provisioning template is enabled, otherwise false.
--
-- * 'dptrrsPreProvisioningHook' - Gets information about a pre-provisioned hook.
--
-- * 'dptrrsCreationDate' - The date when the fleet provisioning template was created.
--
-- * 'dptrrsDefaultVersionId' - The default fleet template version ID.
--
-- * 'dptrrsDescription' - The description of the fleet provisioning template.
--
-- * 'dptrrsProvisioningRoleARN' - The ARN of the role associated with the provisioning template. This IoT role grants permission to provision a device.
--
-- * 'dptrrsTemplateBody' - The JSON formatted contents of the fleet provisioning template.
--
-- * 'dptrrsTemplateARN' - The ARN of the fleet provisioning template.
--
-- * 'dptrrsResponseStatus' - -- | The response status code.
describeProvisioningTemplateResponse ::
  -- | 'dptrrsResponseStatus'
  Int ->
  DescribeProvisioningTemplateResponse
describeProvisioningTemplateResponse pResponseStatus_ =
  DescribeProvisioningTemplateResponse'
    { _dptrrsTemplateName =
        Nothing,
      _dptrrsLastModifiedDate = Nothing,
      _dptrrsEnabled = Nothing,
      _dptrrsPreProvisioningHook = Nothing,
      _dptrrsCreationDate = Nothing,
      _dptrrsDefaultVersionId = Nothing,
      _dptrrsDescription = Nothing,
      _dptrrsProvisioningRoleARN = Nothing,
      _dptrrsTemplateBody = Nothing,
      _dptrrsTemplateARN = Nothing,
      _dptrrsResponseStatus =
        pResponseStatus_
    }

-- | The name of the fleet provisioning template.
dptrrsTemplateName :: Lens' DescribeProvisioningTemplateResponse (Maybe Text)
dptrrsTemplateName = lens _dptrrsTemplateName (\s a -> s {_dptrrsTemplateName = a})

-- | The date when the fleet provisioning template was last modified.
dptrrsLastModifiedDate :: Lens' DescribeProvisioningTemplateResponse (Maybe UTCTime)
dptrrsLastModifiedDate = lens _dptrrsLastModifiedDate (\s a -> s {_dptrrsLastModifiedDate = a}) . mapping _Time

-- | True if the fleet provisioning template is enabled, otherwise false.
dptrrsEnabled :: Lens' DescribeProvisioningTemplateResponse (Maybe Bool)
dptrrsEnabled = lens _dptrrsEnabled (\s a -> s {_dptrrsEnabled = a})

-- | Gets information about a pre-provisioned hook.
dptrrsPreProvisioningHook :: Lens' DescribeProvisioningTemplateResponse (Maybe ProvisioningHook)
dptrrsPreProvisioningHook = lens _dptrrsPreProvisioningHook (\s a -> s {_dptrrsPreProvisioningHook = a})

-- | The date when the fleet provisioning template was created.
dptrrsCreationDate :: Lens' DescribeProvisioningTemplateResponse (Maybe UTCTime)
dptrrsCreationDate = lens _dptrrsCreationDate (\s a -> s {_dptrrsCreationDate = a}) . mapping _Time

-- | The default fleet template version ID.
dptrrsDefaultVersionId :: Lens' DescribeProvisioningTemplateResponse (Maybe Int)
dptrrsDefaultVersionId = lens _dptrrsDefaultVersionId (\s a -> s {_dptrrsDefaultVersionId = a})

-- | The description of the fleet provisioning template.
dptrrsDescription :: Lens' DescribeProvisioningTemplateResponse (Maybe Text)
dptrrsDescription = lens _dptrrsDescription (\s a -> s {_dptrrsDescription = a})

-- | The ARN of the role associated with the provisioning template. This IoT role grants permission to provision a device.
dptrrsProvisioningRoleARN :: Lens' DescribeProvisioningTemplateResponse (Maybe Text)
dptrrsProvisioningRoleARN = lens _dptrrsProvisioningRoleARN (\s a -> s {_dptrrsProvisioningRoleARN = a})

-- | The JSON formatted contents of the fleet provisioning template.
dptrrsTemplateBody :: Lens' DescribeProvisioningTemplateResponse (Maybe Text)
dptrrsTemplateBody = lens _dptrrsTemplateBody (\s a -> s {_dptrrsTemplateBody = a})

-- | The ARN of the fleet provisioning template.
dptrrsTemplateARN :: Lens' DescribeProvisioningTemplateResponse (Maybe Text)
dptrrsTemplateARN = lens _dptrrsTemplateARN (\s a -> s {_dptrrsTemplateARN = a})

-- | -- | The response status code.
dptrrsResponseStatus :: Lens' DescribeProvisioningTemplateResponse Int
dptrrsResponseStatus = lens _dptrrsResponseStatus (\s a -> s {_dptrrsResponseStatus = a})

instance NFData DescribeProvisioningTemplateResponse
