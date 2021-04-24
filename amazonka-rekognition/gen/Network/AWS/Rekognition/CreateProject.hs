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
-- Module      : Network.AWS.Rekognition.CreateProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon Rekognition Custom Labels project. A project is a logical grouping of resources (images, Labels, models) and operations (training, evaluation and detection).
--
--
-- This operation requires permissions to perform the @rekognition:CreateProject@ action.
module Network.AWS.Rekognition.CreateProject
  ( -- * Creating a Request
    createProject,
    CreateProject,

    -- * Request Lenses
    cpProjectName,

    -- * Destructuring the Response
    createProjectResponse,
    CreateProjectResponse,

    -- * Response Lenses
    cprrsProjectARN,
    cprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createProject' smart constructor.
newtype CreateProject = CreateProject'
  { _cpProjectName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpProjectName' - The name of the project to create.
createProject ::
  -- | 'cpProjectName'
  Text ->
  CreateProject
createProject pProjectName_ =
  CreateProject' {_cpProjectName = pProjectName_}

-- | The name of the project to create.
cpProjectName :: Lens' CreateProject Text
cpProjectName = lens _cpProjectName (\s a -> s {_cpProjectName = a})

instance AWSRequest CreateProject where
  type Rs CreateProject = CreateProjectResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          CreateProjectResponse'
            <$> (x .?> "ProjectArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateProject

instance NFData CreateProject

instance ToHeaders CreateProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("RekognitionService.CreateProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateProject where
  toJSON CreateProject' {..} =
    object
      (catMaybes [Just ("ProjectName" .= _cpProjectName)])

instance ToPath CreateProject where
  toPath = const "/"

instance ToQuery CreateProject where
  toQuery = const mempty

-- | /See:/ 'createProjectResponse' smart constructor.
data CreateProjectResponse = CreateProjectResponse'
  { _cprrsProjectARN ::
      !(Maybe Text),
    _cprrsResponseStatus ::
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

-- | Creates a value of 'CreateProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprrsProjectARN' - The Amazon Resource Name (ARN) of the new project. You can use the ARN to configure IAM access to the project.
--
-- * 'cprrsResponseStatus' - -- | The response status code.
createProjectResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  CreateProjectResponse
createProjectResponse pResponseStatus_ =
  CreateProjectResponse'
    { _cprrsProjectARN = Nothing,
      _cprrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the new project. You can use the ARN to configure IAM access to the project.
cprrsProjectARN :: Lens' CreateProjectResponse (Maybe Text)
cprrsProjectARN = lens _cprrsProjectARN (\s a -> s {_cprrsProjectARN = a})

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreateProjectResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

instance NFData CreateProjectResponse
