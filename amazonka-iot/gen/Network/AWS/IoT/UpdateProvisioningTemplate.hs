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
-- Module      : Network.AWS.IoT.UpdateProvisioningTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a fleet provisioning template.
module Network.AWS.IoT.UpdateProvisioningTemplate
  ( -- * Creating a Request
    updateProvisioningTemplate,
    UpdateProvisioningTemplate,

    -- * Request Lenses
    uptRemovePreProvisioningHook,
    uptEnabled,
    uptPreProvisioningHook,
    uptDefaultVersionId,
    uptDescription,
    uptProvisioningRoleARN,
    uptTemplateName,

    -- * Destructuring the Response
    updateProvisioningTemplateResponse,
    UpdateProvisioningTemplateResponse,

    -- * Response Lenses
    uptrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateProvisioningTemplate' smart constructor.
data UpdateProvisioningTemplate = UpdateProvisioningTemplate'
  { _uptRemovePreProvisioningHook ::
      !(Maybe Bool),
    _uptEnabled ::
      !(Maybe Bool),
    _uptPreProvisioningHook ::
      !( Maybe
           ProvisioningHook
       ),
    _uptDefaultVersionId ::
      !(Maybe Int),
    _uptDescription ::
      !(Maybe Text),
    _uptProvisioningRoleARN ::
      !(Maybe Text),
    _uptTemplateName ::
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

-- | Creates a value of 'UpdateProvisioningTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uptRemovePreProvisioningHook' - Removes pre-provisioning hook template.
--
-- * 'uptEnabled' - True to enable the fleet provisioning template, otherwise false.
--
-- * 'uptPreProvisioningHook' - Updates the pre-provisioning hook template.
--
-- * 'uptDefaultVersionId' - The ID of the default provisioning template version.
--
-- * 'uptDescription' - The description of the fleet provisioning template.
--
-- * 'uptProvisioningRoleARN' - The ARN of the role associated with the provisioning template. This IoT role grants permission to provision a device.
--
-- * 'uptTemplateName' - The name of the fleet provisioning template.
updateProvisioningTemplate ::
  -- | 'uptTemplateName'
  Text ->
  UpdateProvisioningTemplate
updateProvisioningTemplate pTemplateName_ =
  UpdateProvisioningTemplate'
    { _uptRemovePreProvisioningHook =
        Nothing,
      _uptEnabled = Nothing,
      _uptPreProvisioningHook = Nothing,
      _uptDefaultVersionId = Nothing,
      _uptDescription = Nothing,
      _uptProvisioningRoleARN = Nothing,
      _uptTemplateName = pTemplateName_
    }

-- | Removes pre-provisioning hook template.
uptRemovePreProvisioningHook :: Lens' UpdateProvisioningTemplate (Maybe Bool)
uptRemovePreProvisioningHook = lens _uptRemovePreProvisioningHook (\s a -> s {_uptRemovePreProvisioningHook = a})

-- | True to enable the fleet provisioning template, otherwise false.
uptEnabled :: Lens' UpdateProvisioningTemplate (Maybe Bool)
uptEnabled = lens _uptEnabled (\s a -> s {_uptEnabled = a})

-- | Updates the pre-provisioning hook template.
uptPreProvisioningHook :: Lens' UpdateProvisioningTemplate (Maybe ProvisioningHook)
uptPreProvisioningHook = lens _uptPreProvisioningHook (\s a -> s {_uptPreProvisioningHook = a})

-- | The ID of the default provisioning template version.
uptDefaultVersionId :: Lens' UpdateProvisioningTemplate (Maybe Int)
uptDefaultVersionId = lens _uptDefaultVersionId (\s a -> s {_uptDefaultVersionId = a})

-- | The description of the fleet provisioning template.
uptDescription :: Lens' UpdateProvisioningTemplate (Maybe Text)
uptDescription = lens _uptDescription (\s a -> s {_uptDescription = a})

-- | The ARN of the role associated with the provisioning template. This IoT role grants permission to provision a device.
uptProvisioningRoleARN :: Lens' UpdateProvisioningTemplate (Maybe Text)
uptProvisioningRoleARN = lens _uptProvisioningRoleARN (\s a -> s {_uptProvisioningRoleARN = a})

-- | The name of the fleet provisioning template.
uptTemplateName :: Lens' UpdateProvisioningTemplate Text
uptTemplateName = lens _uptTemplateName (\s a -> s {_uptTemplateName = a})

instance AWSRequest UpdateProvisioningTemplate where
  type
    Rs UpdateProvisioningTemplate =
      UpdateProvisioningTemplateResponse
  request = patchJSON ioT
  response =
    receiveEmpty
      ( \s h x ->
          UpdateProvisioningTemplateResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable UpdateProvisioningTemplate

instance NFData UpdateProvisioningTemplate

instance ToHeaders UpdateProvisioningTemplate where
  toHeaders = const mempty

instance ToJSON UpdateProvisioningTemplate where
  toJSON UpdateProvisioningTemplate' {..} =
    object
      ( catMaybes
          [ ("removePreProvisioningHook" .=)
              <$> _uptRemovePreProvisioningHook,
            ("enabled" .=) <$> _uptEnabled,
            ("preProvisioningHook" .=)
              <$> _uptPreProvisioningHook,
            ("defaultVersionId" .=) <$> _uptDefaultVersionId,
            ("description" .=) <$> _uptDescription,
            ("provisioningRoleArn" .=)
              <$> _uptProvisioningRoleARN
          ]
      )

instance ToPath UpdateProvisioningTemplate where
  toPath UpdateProvisioningTemplate' {..} =
    mconcat
      ["/provisioning-templates/", toBS _uptTemplateName]

instance ToQuery UpdateProvisioningTemplate where
  toQuery = const mempty

-- | /See:/ 'updateProvisioningTemplateResponse' smart constructor.
newtype UpdateProvisioningTemplateResponse = UpdateProvisioningTemplateResponse'
  { _uptrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateProvisioningTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uptrrsResponseStatus' - -- | The response status code.
updateProvisioningTemplateResponse ::
  -- | 'uptrrsResponseStatus'
  Int ->
  UpdateProvisioningTemplateResponse
updateProvisioningTemplateResponse pResponseStatus_ =
  UpdateProvisioningTemplateResponse'
    { _uptrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
uptrrsResponseStatus :: Lens' UpdateProvisioningTemplateResponse Int
uptrrsResponseStatus = lens _uptrrsResponseStatus (\s a -> s {_uptrrsResponseStatus = a})

instance NFData UpdateProvisioningTemplateResponse
