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
-- Module      : Network.AWS.CodePipeline.UpdateActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an action type that was created with any supported integration model, where the action type is to be used by customers of the action type provider. Use a JSON file with the action definition and @UpdateActionType@ to provide the full structure.
module Network.AWS.CodePipeline.UpdateActionType
  ( -- * Creating a Request
    updateActionType,
    UpdateActionType,

    -- * Request Lenses
    uatActionType,

    -- * Destructuring the Response
    updateActionTypeResponse,
    UpdateActionTypeResponse,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateActionType' smart constructor.
newtype UpdateActionType = UpdateActionType'
  { _uatActionType ::
      Maybe ActionTypeDeclaration
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateActionType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uatActionType' - The action type definition for the action type to be updated.
updateActionType ::
  UpdateActionType
updateActionType =
  UpdateActionType' {_uatActionType = Nothing}

-- | The action type definition for the action type to be updated.
uatActionType :: Lens' UpdateActionType (Maybe ActionTypeDeclaration)
uatActionType = lens _uatActionType (\s a -> s {_uatActionType = a})

instance AWSRequest UpdateActionType where
  type Rs UpdateActionType = UpdateActionTypeResponse
  request = postJSON codePipeline
  response = receiveNull UpdateActionTypeResponse'

instance Hashable UpdateActionType

instance NFData UpdateActionType

instance ToHeaders UpdateActionType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.UpdateActionType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateActionType where
  toJSON UpdateActionType' {..} =
    object
      (catMaybes [("actionType" .=) <$> _uatActionType])

instance ToPath UpdateActionType where
  toPath = const "/"

instance ToQuery UpdateActionType where
  toQuery = const mempty

-- | /See:/ 'updateActionTypeResponse' smart constructor.
data UpdateActionTypeResponse = UpdateActionTypeResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateActionTypeResponse' with the minimum fields required to make a request.
updateActionTypeResponse ::
  UpdateActionTypeResponse
updateActionTypeResponse = UpdateActionTypeResponse'

instance NFData UpdateActionTypeResponse
