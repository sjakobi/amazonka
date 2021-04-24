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
-- Module      : Network.AWS.CodeStar.UpdateProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a project in AWS CodeStar.
module Network.AWS.CodeStar.UpdateProject
  ( -- * Creating a Request
    updateProject,
    UpdateProject,

    -- * Request Lenses
    uName,
    uDescription,
    uId,

    -- * Destructuring the Response
    updateProjectResponse,
    UpdateProjectResponse,

    -- * Response Lenses
    ursResponseStatus,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateProject' smart constructor.
data UpdateProject = UpdateProject'
  { _uName ::
      !(Maybe (Sensitive Text)),
    _uDescription :: !(Maybe (Sensitive Text)),
    _uId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uName' - The name of the project you want to update.
--
-- * 'uDescription' - The description of the project, if any.
--
-- * 'uId' - The ID of the project you want to update.
updateProject ::
  -- | 'uId'
  Text ->
  UpdateProject
updateProject pId_ =
  UpdateProject'
    { _uName = Nothing,
      _uDescription = Nothing,
      _uId = pId_
    }

-- | The name of the project you want to update.
uName :: Lens' UpdateProject (Maybe Text)
uName = lens _uName (\s a -> s {_uName = a}) . mapping _Sensitive

-- | The description of the project, if any.
uDescription :: Lens' UpdateProject (Maybe Text)
uDescription = lens _uDescription (\s a -> s {_uDescription = a}) . mapping _Sensitive

-- | The ID of the project you want to update.
uId :: Lens' UpdateProject Text
uId = lens _uId (\s a -> s {_uId = a})

instance AWSRequest UpdateProject where
  type Rs UpdateProject = UpdateProjectResponse
  request = postJSON codeStar
  response =
    receiveEmpty
      ( \s h x ->
          UpdateProjectResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateProject

instance NFData UpdateProject

instance ToHeaders UpdateProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeStar_20170419.UpdateProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateProject where
  toJSON UpdateProject' {..} =
    object
      ( catMaybes
          [ ("name" .=) <$> _uName,
            ("description" .=) <$> _uDescription,
            Just ("id" .= _uId)
          ]
      )

instance ToPath UpdateProject where
  toPath = const "/"

instance ToQuery UpdateProject where
  toQuery = const mempty

-- | /See:/ 'updateProjectResponse' smart constructor.
newtype UpdateProjectResponse = UpdateProjectResponse'
  { _ursResponseStatus ::
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

-- | Creates a value of 'UpdateProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursResponseStatus' - -- | The response status code.
updateProjectResponse ::
  -- | 'ursResponseStatus'
  Int ->
  UpdateProjectResponse
updateProjectResponse pResponseStatus_ =
  UpdateProjectResponse'
    { _ursResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ursResponseStatus :: Lens' UpdateProjectResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

instance NFData UpdateProjectResponse
