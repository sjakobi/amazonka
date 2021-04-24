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
-- Module      : Network.AWS.DeviceFarm.CreateProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a project.
module Network.AWS.DeviceFarm.CreateProject
  ( -- * Creating a Request
    createProject,
    CreateProject,

    -- * Request Lenses
    cpDefaultJobTimeoutMinutes,
    cpName,

    -- * Destructuring the Response
    createProjectResponse,
    CreateProjectResponse,

    -- * Response Lenses
    cprrsProject,
    cprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the create project operation.
--
--
--
-- /See:/ 'createProject' smart constructor.
data CreateProject = CreateProject'
  { _cpDefaultJobTimeoutMinutes ::
      !(Maybe Int),
    _cpName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpDefaultJobTimeoutMinutes' - Sets the execution timeout value (in minutes) for a project. All test runs in this project use the specified execution timeout value unless overridden when scheduling a run.
--
-- * 'cpName' - The project's name.
createProject ::
  -- | 'cpName'
  Text ->
  CreateProject
createProject pName_ =
  CreateProject'
    { _cpDefaultJobTimeoutMinutes =
        Nothing,
      _cpName = pName_
    }

-- | Sets the execution timeout value (in minutes) for a project. All test runs in this project use the specified execution timeout value unless overridden when scheduling a run.
cpDefaultJobTimeoutMinutes :: Lens' CreateProject (Maybe Int)
cpDefaultJobTimeoutMinutes = lens _cpDefaultJobTimeoutMinutes (\s a -> s {_cpDefaultJobTimeoutMinutes = a})

-- | The project's name.
cpName :: Lens' CreateProject Text
cpName = lens _cpName (\s a -> s {_cpName = a})

instance AWSRequest CreateProject where
  type Rs CreateProject = CreateProjectResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          CreateProjectResponse'
            <$> (x .?> "project") <*> (pure (fromEnum s))
      )

instance Hashable CreateProject

instance NFData CreateProject

instance ToHeaders CreateProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.CreateProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateProject where
  toJSON CreateProject' {..} =
    object
      ( catMaybes
          [ ("defaultJobTimeoutMinutes" .=)
              <$> _cpDefaultJobTimeoutMinutes,
            Just ("name" .= _cpName)
          ]
      )

instance ToPath CreateProject where
  toPath = const "/"

instance ToQuery CreateProject where
  toQuery = const mempty

-- | Represents the result of a create project request.
--
--
--
-- /See:/ 'createProjectResponse' smart constructor.
data CreateProjectResponse = CreateProjectResponse'
  { _cprrsProject ::
      !(Maybe Project),
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
-- * 'cprrsProject' - The newly created project.
--
-- * 'cprrsResponseStatus' - -- | The response status code.
createProjectResponse ::
  -- | 'cprrsResponseStatus'
  Int ->
  CreateProjectResponse
createProjectResponse pResponseStatus_ =
  CreateProjectResponse'
    { _cprrsProject = Nothing,
      _cprrsResponseStatus = pResponseStatus_
    }

-- | The newly created project.
cprrsProject :: Lens' CreateProjectResponse (Maybe Project)
cprrsProject = lens _cprrsProject (\s a -> s {_cprrsProject = a})

-- | -- | The response status code.
cprrsResponseStatus :: Lens' CreateProjectResponse Int
cprrsResponseStatus = lens _cprrsResponseStatus (\s a -> s {_cprrsResponseStatus = a})

instance NFData CreateProjectResponse
