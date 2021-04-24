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
-- Module      : Network.AWS.CodePipeline.GetActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an action type created for an external provider, where the action is to be used by customers of the external provider. The action can be created with any supported integration model.
module Network.AWS.CodePipeline.GetActionType
  ( -- * Creating a Request
    getActionType,
    GetActionType,

    -- * Request Lenses
    gatCategory,
    gatOwner,
    gatProvider,
    gatVersion,

    -- * Destructuring the Response
    getActionTypeResponse,
    GetActionTypeResponse,

    -- * Response Lenses
    gatrrsActionType,
    gatrrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getActionType' smart constructor.
data GetActionType = GetActionType'
  { _gatCategory ::
      !ActionCategory,
    _gatOwner :: !Text,
    _gatProvider :: !Text,
    _gatVersion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetActionType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gatCategory' - Defines what kind of action can be taken in the stage. The following are the valid values:     * @Source@      * @Build@      * @Test@      * @Deploy@      * @Approval@      * @Invoke@
--
-- * 'gatOwner' - The creator of an action type that was created with any supported integration model. There are two valid values: @AWS@ and @ThirdParty@ .
--
-- * 'gatProvider' - The provider of the action type being called. The provider name is specified when the action type is created.
--
-- * 'gatVersion' - A string that describes the action type version.
getActionType ::
  -- | 'gatCategory'
  ActionCategory ->
  -- | 'gatOwner'
  Text ->
  -- | 'gatProvider'
  Text ->
  -- | 'gatVersion'
  Text ->
  GetActionType
getActionType pCategory_ pOwner_ pProvider_ pVersion_ =
  GetActionType'
    { _gatCategory = pCategory_,
      _gatOwner = pOwner_,
      _gatProvider = pProvider_,
      _gatVersion = pVersion_
    }

-- | Defines what kind of action can be taken in the stage. The following are the valid values:     * @Source@      * @Build@      * @Test@      * @Deploy@      * @Approval@      * @Invoke@
gatCategory :: Lens' GetActionType ActionCategory
gatCategory = lens _gatCategory (\s a -> s {_gatCategory = a})

-- | The creator of an action type that was created with any supported integration model. There are two valid values: @AWS@ and @ThirdParty@ .
gatOwner :: Lens' GetActionType Text
gatOwner = lens _gatOwner (\s a -> s {_gatOwner = a})

-- | The provider of the action type being called. The provider name is specified when the action type is created.
gatProvider :: Lens' GetActionType Text
gatProvider = lens _gatProvider (\s a -> s {_gatProvider = a})

-- | A string that describes the action type version.
gatVersion :: Lens' GetActionType Text
gatVersion = lens _gatVersion (\s a -> s {_gatVersion = a})

instance AWSRequest GetActionType where
  type Rs GetActionType = GetActionTypeResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          GetActionTypeResponse'
            <$> (x .?> "actionType") <*> (pure (fromEnum s))
      )

instance Hashable GetActionType

instance NFData GetActionType

instance ToHeaders GetActionType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.GetActionType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetActionType where
  toJSON GetActionType' {..} =
    object
      ( catMaybes
          [ Just ("category" .= _gatCategory),
            Just ("owner" .= _gatOwner),
            Just ("provider" .= _gatProvider),
            Just ("version" .= _gatVersion)
          ]
      )

instance ToPath GetActionType where
  toPath = const "/"

instance ToQuery GetActionType where
  toQuery = const mempty

-- | /See:/ 'getActionTypeResponse' smart constructor.
data GetActionTypeResponse = GetActionTypeResponse'
  { _gatrrsActionType ::
      !( Maybe
           ActionTypeDeclaration
       ),
    _gatrrsResponseStatus ::
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

-- | Creates a value of 'GetActionTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gatrrsActionType' - The action type information for the requested action type, such as the action type ID.
--
-- * 'gatrrsResponseStatus' - -- | The response status code.
getActionTypeResponse ::
  -- | 'gatrrsResponseStatus'
  Int ->
  GetActionTypeResponse
getActionTypeResponse pResponseStatus_ =
  GetActionTypeResponse'
    { _gatrrsActionType = Nothing,
      _gatrrsResponseStatus = pResponseStatus_
    }

-- | The action type information for the requested action type, such as the action type ID.
gatrrsActionType :: Lens' GetActionTypeResponse (Maybe ActionTypeDeclaration)
gatrrsActionType = lens _gatrrsActionType (\s a -> s {_gatrrsActionType = a})

-- | -- | The response status code.
gatrrsResponseStatus :: Lens' GetActionTypeResponse Int
gatrrsResponseStatus = lens _gatrrsResponseStatus (\s a -> s {_gatrrsResponseStatus = a})

instance NFData GetActionTypeResponse
