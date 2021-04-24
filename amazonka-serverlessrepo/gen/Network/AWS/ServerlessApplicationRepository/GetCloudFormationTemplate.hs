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
-- Module      : Network.AWS.ServerlessApplicationRepository.GetCloudFormationTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified AWS CloudFormation template.
module Network.AWS.ServerlessApplicationRepository.GetCloudFormationTemplate
  ( -- * Creating a Request
    getCloudFormationTemplate,
    GetCloudFormationTemplate,

    -- * Request Lenses
    gcftApplicationId,
    gcftTemplateId,

    -- * Destructuring the Response
    getCloudFormationTemplateResponse,
    GetCloudFormationTemplateResponse,

    -- * Response Lenses
    gcftrrsApplicationId,
    gcftrrsStatus,
    gcftrrsCreationTime,
    gcftrrsExpirationTime,
    gcftrrsTemplateURL,
    gcftrrsSemanticVersion,
    gcftrrsTemplateId,
    gcftrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServerlessApplicationRepository.Types

-- | /See:/ 'getCloudFormationTemplate' smart constructor.
data GetCloudFormationTemplate = GetCloudFormationTemplate'
  { _gcftApplicationId ::
      !Text,
    _gcftTemplateId ::
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

-- | Creates a value of 'GetCloudFormationTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcftApplicationId' - The Amazon Resource Name (ARN) of the application.
--
-- * 'gcftTemplateId' - The UUID returned by CreateCloudFormationTemplate. Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}
getCloudFormationTemplate ::
  -- | 'gcftApplicationId'
  Text ->
  -- | 'gcftTemplateId'
  Text ->
  GetCloudFormationTemplate
getCloudFormationTemplate
  pApplicationId_
  pTemplateId_ =
    GetCloudFormationTemplate'
      { _gcftApplicationId =
          pApplicationId_,
        _gcftTemplateId = pTemplateId_
      }

-- | The Amazon Resource Name (ARN) of the application.
gcftApplicationId :: Lens' GetCloudFormationTemplate Text
gcftApplicationId = lens _gcftApplicationId (\s a -> s {_gcftApplicationId = a})

-- | The UUID returned by CreateCloudFormationTemplate. Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}
gcftTemplateId :: Lens' GetCloudFormationTemplate Text
gcftTemplateId = lens _gcftTemplateId (\s a -> s {_gcftTemplateId = a})

instance AWSRequest GetCloudFormationTemplate where
  type
    Rs GetCloudFormationTemplate =
      GetCloudFormationTemplateResponse
  request = get serverlessApplicationRepository
  response =
    receiveJSON
      ( \s h x ->
          GetCloudFormationTemplateResponse'
            <$> (x .?> "applicationId")
            <*> (x .?> "status")
            <*> (x .?> "creationTime")
            <*> (x .?> "expirationTime")
            <*> (x .?> "templateUrl")
            <*> (x .?> "semanticVersion")
            <*> (x .?> "templateId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetCloudFormationTemplate

instance NFData GetCloudFormationTemplate

instance ToHeaders GetCloudFormationTemplate where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetCloudFormationTemplate where
  toPath GetCloudFormationTemplate' {..} =
    mconcat
      [ "/applications/",
        toBS _gcftApplicationId,
        "/templates/",
        toBS _gcftTemplateId
      ]

instance ToQuery GetCloudFormationTemplate where
  toQuery = const mempty

-- | /See:/ 'getCloudFormationTemplateResponse' smart constructor.
data GetCloudFormationTemplateResponse = GetCloudFormationTemplateResponse'
  { _gcftrrsApplicationId ::
      !( Maybe
           Text
       ),
    _gcftrrsStatus ::
      !( Maybe
           Status
       ),
    _gcftrrsCreationTime ::
      !( Maybe
           Text
       ),
    _gcftrrsExpirationTime ::
      !( Maybe
           Text
       ),
    _gcftrrsTemplateURL ::
      !( Maybe
           Text
       ),
    _gcftrrsSemanticVersion ::
      !( Maybe
           Text
       ),
    _gcftrrsTemplateId ::
      !( Maybe
           Text
       ),
    _gcftrrsResponseStatus ::
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

-- | Creates a value of 'GetCloudFormationTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcftrrsApplicationId' - The application Amazon Resource Name (ARN).
--
-- * 'gcftrrsStatus' - Status of the template creation workflow. Possible values: PREPARING | ACTIVE | EXPIRED
--
-- * 'gcftrrsCreationTime' - The date and time this resource was created.
--
-- * 'gcftrrsExpirationTime' - The date and time this template expires. Templates  expire 1 hour after creation.
--
-- * 'gcftrrsTemplateURL' - A link to the template that can be used to deploy the application using  AWS CloudFormation.
--
-- * 'gcftrrsSemanticVersion' - The semantic version of the application: <https://semver.org/ https://semver.org/>
--
-- * 'gcftrrsTemplateId' - The UUID returned by CreateCloudFormationTemplate. Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}
--
-- * 'gcftrrsResponseStatus' - -- | The response status code.
getCloudFormationTemplateResponse ::
  -- | 'gcftrrsResponseStatus'
  Int ->
  GetCloudFormationTemplateResponse
getCloudFormationTemplateResponse pResponseStatus_ =
  GetCloudFormationTemplateResponse'
    { _gcftrrsApplicationId =
        Nothing,
      _gcftrrsStatus = Nothing,
      _gcftrrsCreationTime = Nothing,
      _gcftrrsExpirationTime = Nothing,
      _gcftrrsTemplateURL = Nothing,
      _gcftrrsSemanticVersion = Nothing,
      _gcftrrsTemplateId = Nothing,
      _gcftrrsResponseStatus =
        pResponseStatus_
    }

-- | The application Amazon Resource Name (ARN).
gcftrrsApplicationId :: Lens' GetCloudFormationTemplateResponse (Maybe Text)
gcftrrsApplicationId = lens _gcftrrsApplicationId (\s a -> s {_gcftrrsApplicationId = a})

-- | Status of the template creation workflow. Possible values: PREPARING | ACTIVE | EXPIRED
gcftrrsStatus :: Lens' GetCloudFormationTemplateResponse (Maybe Status)
gcftrrsStatus = lens _gcftrrsStatus (\s a -> s {_gcftrrsStatus = a})

-- | The date and time this resource was created.
gcftrrsCreationTime :: Lens' GetCloudFormationTemplateResponse (Maybe Text)
gcftrrsCreationTime = lens _gcftrrsCreationTime (\s a -> s {_gcftrrsCreationTime = a})

-- | The date and time this template expires. Templates  expire 1 hour after creation.
gcftrrsExpirationTime :: Lens' GetCloudFormationTemplateResponse (Maybe Text)
gcftrrsExpirationTime = lens _gcftrrsExpirationTime (\s a -> s {_gcftrrsExpirationTime = a})

-- | A link to the template that can be used to deploy the application using  AWS CloudFormation.
gcftrrsTemplateURL :: Lens' GetCloudFormationTemplateResponse (Maybe Text)
gcftrrsTemplateURL = lens _gcftrrsTemplateURL (\s a -> s {_gcftrrsTemplateURL = a})

-- | The semantic version of the application: <https://semver.org/ https://semver.org/>
gcftrrsSemanticVersion :: Lens' GetCloudFormationTemplateResponse (Maybe Text)
gcftrrsSemanticVersion = lens _gcftrrsSemanticVersion (\s a -> s {_gcftrrsSemanticVersion = a})

-- | The UUID returned by CreateCloudFormationTemplate. Pattern: [0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}
gcftrrsTemplateId :: Lens' GetCloudFormationTemplateResponse (Maybe Text)
gcftrrsTemplateId = lens _gcftrrsTemplateId (\s a -> s {_gcftrrsTemplateId = a})

-- | -- | The response status code.
gcftrrsResponseStatus :: Lens' GetCloudFormationTemplateResponse Int
gcftrrsResponseStatus = lens _gcftrrsResponseStatus (\s a -> s {_gcftrrsResponseStatus = a})

instance NFData GetCloudFormationTemplateResponse
