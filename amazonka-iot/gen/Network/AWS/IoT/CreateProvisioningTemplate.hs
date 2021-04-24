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
-- Module      : Network.AWS.IoT.CreateProvisioningTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a fleet provisioning template.
module Network.AWS.IoT.CreateProvisioningTemplate
  ( -- * Creating a Request
    createProvisioningTemplate,
    CreateProvisioningTemplate,

    -- * Request Lenses
    cptEnabled,
    cptPreProvisioningHook,
    cptTags,
    cptDescription,
    cptTemplateName,
    cptTemplateBody,
    cptProvisioningRoleARN,

    -- * Destructuring the Response
    createProvisioningTemplateResponse,
    CreateProvisioningTemplateResponse,

    -- * Response Lenses
    cptrrsTemplateName,
    cptrrsDefaultVersionId,
    cptrrsTemplateARN,
    cptrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createProvisioningTemplate' smart constructor.
data CreateProvisioningTemplate = CreateProvisioningTemplate'
  { _cptEnabled ::
      !(Maybe Bool),
    _cptPreProvisioningHook ::
      !( Maybe
           ProvisioningHook
       ),
    _cptTags ::
      !(Maybe [Tag]),
    _cptDescription ::
      !(Maybe Text),
    _cptTemplateName ::
      !Text,
    _cptTemplateBody ::
      !Text,
    _cptProvisioningRoleARN ::
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

-- | Creates a value of 'CreateProvisioningTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cptEnabled' - True to enable the fleet provisioning template, otherwise false.
--
-- * 'cptPreProvisioningHook' - Creates a pre-provisioning hook template.
--
-- * 'cptTags' - Metadata which can be used to manage the fleet provisioning template.
--
-- * 'cptDescription' - The description of the fleet provisioning template.
--
-- * 'cptTemplateName' - The name of the fleet provisioning template.
--
-- * 'cptTemplateBody' - The JSON formatted contents of the fleet provisioning template.
--
-- * 'cptProvisioningRoleARN' - The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
createProvisioningTemplate ::
  -- | 'cptTemplateName'
  Text ->
  -- | 'cptTemplateBody'
  Text ->
  -- | 'cptProvisioningRoleARN'
  Text ->
  CreateProvisioningTemplate
createProvisioningTemplate
  pTemplateName_
  pTemplateBody_
  pProvisioningRoleARN_ =
    CreateProvisioningTemplate'
      { _cptEnabled = Nothing,
        _cptPreProvisioningHook = Nothing,
        _cptTags = Nothing,
        _cptDescription = Nothing,
        _cptTemplateName = pTemplateName_,
        _cptTemplateBody = pTemplateBody_,
        _cptProvisioningRoleARN = pProvisioningRoleARN_
      }

-- | True to enable the fleet provisioning template, otherwise false.
cptEnabled :: Lens' CreateProvisioningTemplate (Maybe Bool)
cptEnabled = lens _cptEnabled (\s a -> s {_cptEnabled = a})

-- | Creates a pre-provisioning hook template.
cptPreProvisioningHook :: Lens' CreateProvisioningTemplate (Maybe ProvisioningHook)
cptPreProvisioningHook = lens _cptPreProvisioningHook (\s a -> s {_cptPreProvisioningHook = a})

-- | Metadata which can be used to manage the fleet provisioning template.
cptTags :: Lens' CreateProvisioningTemplate [Tag]
cptTags = lens _cptTags (\s a -> s {_cptTags = a}) . _Default . _Coerce

-- | The description of the fleet provisioning template.
cptDescription :: Lens' CreateProvisioningTemplate (Maybe Text)
cptDescription = lens _cptDescription (\s a -> s {_cptDescription = a})

-- | The name of the fleet provisioning template.
cptTemplateName :: Lens' CreateProvisioningTemplate Text
cptTemplateName = lens _cptTemplateName (\s a -> s {_cptTemplateName = a})

-- | The JSON formatted contents of the fleet provisioning template.
cptTemplateBody :: Lens' CreateProvisioningTemplate Text
cptTemplateBody = lens _cptTemplateBody (\s a -> s {_cptTemplateBody = a})

-- | The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
cptProvisioningRoleARN :: Lens' CreateProvisioningTemplate Text
cptProvisioningRoleARN = lens _cptProvisioningRoleARN (\s a -> s {_cptProvisioningRoleARN = a})

instance AWSRequest CreateProvisioningTemplate where
  type
    Rs CreateProvisioningTemplate =
      CreateProvisioningTemplateResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateProvisioningTemplateResponse'
            <$> (x .?> "templateName")
            <*> (x .?> "defaultVersionId")
            <*> (x .?> "templateArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateProvisioningTemplate

instance NFData CreateProvisioningTemplate

instance ToHeaders CreateProvisioningTemplate where
  toHeaders = const mempty

instance ToJSON CreateProvisioningTemplate where
  toJSON CreateProvisioningTemplate' {..} =
    object
      ( catMaybes
          [ ("enabled" .=) <$> _cptEnabled,
            ("preProvisioningHook" .=)
              <$> _cptPreProvisioningHook,
            ("tags" .=) <$> _cptTags,
            ("description" .=) <$> _cptDescription,
            Just ("templateName" .= _cptTemplateName),
            Just ("templateBody" .= _cptTemplateBody),
            Just
              ("provisioningRoleArn" .= _cptProvisioningRoleARN)
          ]
      )

instance ToPath CreateProvisioningTemplate where
  toPath = const "/provisioning-templates"

instance ToQuery CreateProvisioningTemplate where
  toQuery = const mempty

-- | /See:/ 'createProvisioningTemplateResponse' smart constructor.
data CreateProvisioningTemplateResponse = CreateProvisioningTemplateResponse'
  { _cptrrsTemplateName ::
      !( Maybe
           Text
       ),
    _cptrrsDefaultVersionId ::
      !( Maybe
           Int
       ),
    _cptrrsTemplateARN ::
      !( Maybe
           Text
       ),
    _cptrrsResponseStatus ::
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

-- | Creates a value of 'CreateProvisioningTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cptrrsTemplateName' - The name of the fleet provisioning template.
--
-- * 'cptrrsDefaultVersionId' - The default version of the fleet provisioning template.
--
-- * 'cptrrsTemplateARN' - The ARN that identifies the provisioning template.
--
-- * 'cptrrsResponseStatus' - -- | The response status code.
createProvisioningTemplateResponse ::
  -- | 'cptrrsResponseStatus'
  Int ->
  CreateProvisioningTemplateResponse
createProvisioningTemplateResponse pResponseStatus_ =
  CreateProvisioningTemplateResponse'
    { _cptrrsTemplateName =
        Nothing,
      _cptrrsDefaultVersionId = Nothing,
      _cptrrsTemplateARN = Nothing,
      _cptrrsResponseStatus =
        pResponseStatus_
    }

-- | The name of the fleet provisioning template.
cptrrsTemplateName :: Lens' CreateProvisioningTemplateResponse (Maybe Text)
cptrrsTemplateName = lens _cptrrsTemplateName (\s a -> s {_cptrrsTemplateName = a})

-- | The default version of the fleet provisioning template.
cptrrsDefaultVersionId :: Lens' CreateProvisioningTemplateResponse (Maybe Int)
cptrrsDefaultVersionId = lens _cptrrsDefaultVersionId (\s a -> s {_cptrrsDefaultVersionId = a})

-- | The ARN that identifies the provisioning template.
cptrrsTemplateARN :: Lens' CreateProvisioningTemplateResponse (Maybe Text)
cptrrsTemplateARN = lens _cptrrsTemplateARN (\s a -> s {_cptrrsTemplateARN = a})

-- | -- | The response status code.
cptrrsResponseStatus :: Lens' CreateProvisioningTemplateResponse Int
cptrrsResponseStatus = lens _cptrrsResponseStatus (\s a -> s {_cptrrsResponseStatus = a})

instance NFData CreateProvisioningTemplateResponse
