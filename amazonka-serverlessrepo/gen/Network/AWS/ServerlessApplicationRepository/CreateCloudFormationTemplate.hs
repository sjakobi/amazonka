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
-- Module      : Network.AWS.ServerlessApplicationRepository.CreateCloudFormationTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS CloudFormation template.
module Network.AWS.ServerlessApplicationRepository.CreateCloudFormationTemplate
  ( -- * Creating a Request
    createCloudFormationTemplate,
    CreateCloudFormationTemplate,

    -- * Request Lenses
    ccftSemanticVersion,
    ccftApplicationId,

    -- * Destructuring the Response
    createCloudFormationTemplateResponse,
    CreateCloudFormationTemplateResponse,

    -- * Response Lenses
    ccftrrsApplicationId,
    ccftrrsStatus,
    ccftrrsCreationTime,
    ccftrrsExpirationTime,
    ccftrrsTemplateURL,
    ccftrrsSemanticVersion,
    ccftrrsTemplateId,
    ccftrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'createCloudFormationTemplate' smart constructor.
data CreateCloudFormationTemplate = CreateCloudFormationTemplate'
  { _ccftSemanticVersion ::
      !(Maybe Text),
    _ccftApplicationId ::
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

-- | Creates a value of 'CreateCloudFormationTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccftSemanticVersion' - The semantic version of the application: <https://semver.org/ https://semver.org/>
--
-- * 'ccftApplicationId' - The Amazon Resource Name (ARN) of the application.
createCloudFormationTemplate ::
  -- | 'ccftApplicationId'
  Text ->
  CreateCloudFormationTemplate
createCloudFormationTemplate pApplicationId_ =
  CreateCloudFormationTemplate'
    { _ccftSemanticVersion =
        Nothing,
      _ccftApplicationId = pApplicationId_
    }

-- | The semantic version of the application: <https://semver.org/ https://semver.org/>
ccftSemanticVersion :: Lens' CreateCloudFormationTemplate (Maybe Text)
ccftSemanticVersion = lens _ccftSemanticVersion (\s a -> s {_ccftSemanticVersion = a})

-- | The Amazon Resource Name (ARN) of the application.
ccftApplicationId :: Lens' CreateCloudFormationTemplate Text
ccftApplicationId = lens _ccftApplicationId (\s a -> s {_ccftApplicationId = a})

instance AWSRequest CreateCloudFormationTemplate where
  type
    Rs CreateCloudFormationTemplate =
      CreateCloudFormationTemplateResponse
  request = postJSON serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          CreateCloudFormationTemplateResponse'
            <$> (x .?> "applicationId")
            <*> (x .?> "status")
            <*> (x .?> "creationTime")
            <*> (x .?> "expirationTime")
            <*> (x .?> "templateUrl")
            <*> (x .?> "semanticVersion")
            <*> (x .?> "templateId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateCloudFormationTemplate

instance NFData CreateCloudFormationTemplate

instance ToHeaders CreateCloudFormationTemplate where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateCloudFormationTemplate where
  toJSON CreateCloudFormationTemplate' {..} =
    object
      ( catMaybes
          [("semanticVersion" .=) <$> _ccftSemanticVersion]
      )

instance ToPath CreateCloudFormationTemplate where
  toPath CreateCloudFormationTemplate' {..} =
    mconcat
      [ "/applications/",
        toBS _ccftApplicationId,
        "/templates"
      ]

instance ToQuery CreateCloudFormationTemplate where
  toQuery = const mempty

-- | /See:/ 'createCloudFormationTemplateResponse' smart constructor.
data CreateCloudFormationTemplateResponse = CreateCloudFormationTemplateResponse'
  { _ccftrrsApplicationId ::
      !( Maybe
           Text
       ),
    _ccftrrsStatus ::
      !( Maybe
           Status
       ),
    _ccftrrsCreationTime ::
      !( Maybe
           Text
       ),
    _ccftrrsExpirationTime ::
      !( Maybe
           Text
       ),
    _ccftrrsTemplateURL ::
      !( Maybe
           Text
       ),
    _ccftrrsSemanticVersion ::
      !( Maybe
           Text
       ),
    _ccftrrsTemplateId ::
      !( Maybe
           Text
       ),
    _ccftrrsResponseStatus ::
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

-- | Creates a value of 'CreateCloudFormationTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccftrrsApplicationId' - The application Amazon Resource Name (ARN).
--
-- * 'ccftrrsStatus' - Status of the template creation workflow. Possible values: PREPARING | ACTIVE | EXPIRED
--
-- * 'ccftrrsCreationTime' - The date and time this resource was created.
--
-- * 'ccftrrsExpirationTime' - The date and time this template expires. Templates  expire 1 hour after creation.
--
-- * 'ccftrrsTemplateURL' - A link to the template that can be used to deploy the application using  AWS CloudFormation.
--
-- * 'ccftrrsSemanticVersion' - The semantic version of the application: <https://semver.org/ https://semver.org/>
--
-- * 'ccftrrsTemplateId' - The UUID returned by CreateCloudFormationTemplate. Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}
--
-- * 'ccftrrsResponseStatus' - -- | The response status code.
createCloudFormationTemplateResponse ::
  -- | 'ccftrrsResponseStatus'
  Int ->
  CreateCloudFormationTemplateResponse
createCloudFormationTemplateResponse pResponseStatus_ =
  CreateCloudFormationTemplateResponse'
    { _ccftrrsApplicationId =
        Nothing,
      _ccftrrsStatus = Nothing,
      _ccftrrsCreationTime = Nothing,
      _ccftrrsExpirationTime = Nothing,
      _ccftrrsTemplateURL = Nothing,
      _ccftrrsSemanticVersion = Nothing,
      _ccftrrsTemplateId = Nothing,
      _ccftrrsResponseStatus =
        pResponseStatus_
    }

-- | The application Amazon Resource Name (ARN).
ccftrrsApplicationId :: Lens' CreateCloudFormationTemplateResponse (Maybe Text)
ccftrrsApplicationId = lens _ccftrrsApplicationId (\s a -> s {_ccftrrsApplicationId = a})

-- | Status of the template creation workflow. Possible values: PREPARING | ACTIVE | EXPIRED
ccftrrsStatus :: Lens' CreateCloudFormationTemplateResponse (Maybe Status)
ccftrrsStatus = lens _ccftrrsStatus (\s a -> s {_ccftrrsStatus = a})

-- | The date and time this resource was created.
ccftrrsCreationTime :: Lens' CreateCloudFormationTemplateResponse (Maybe Text)
ccftrrsCreationTime = lens _ccftrrsCreationTime (\s a -> s {_ccftrrsCreationTime = a})

-- | The date and time this template expires. Templates  expire 1 hour after creation.
ccftrrsExpirationTime :: Lens' CreateCloudFormationTemplateResponse (Maybe Text)
ccftrrsExpirationTime = lens _ccftrrsExpirationTime (\s a -> s {_ccftrrsExpirationTime = a})

-- | A link to the template that can be used to deploy the application using  AWS CloudFormation.
ccftrrsTemplateURL :: Lens' CreateCloudFormationTemplateResponse (Maybe Text)
ccftrrsTemplateURL = lens _ccftrrsTemplateURL (\s a -> s {_ccftrrsTemplateURL = a})

-- | The semantic version of the application: <https://semver.org/ https://semver.org/>
ccftrrsSemanticVersion :: Lens' CreateCloudFormationTemplateResponse (Maybe Text)
ccftrrsSemanticVersion = lens _ccftrrsSemanticVersion (\s a -> s {_ccftrrsSemanticVersion = a})

-- | The UUID returned by CreateCloudFormationTemplate. Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}
ccftrrsTemplateId :: Lens' CreateCloudFormationTemplateResponse (Maybe Text)
ccftrrsTemplateId = lens _ccftrrsTemplateId (\s a -> s {_ccftrrsTemplateId = a})

-- | -- | The response status code.
ccftrrsResponseStatus :: Lens' CreateCloudFormationTemplateResponse Int
ccftrrsResponseStatus = lens _ccftrrsResponseStatus (\s a -> s {_ccftrrsResponseStatus = a})

instance NFData CreateCloudFormationTemplateResponse
