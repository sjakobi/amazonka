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
-- Module      : Network.AWS.RDS.DeleteOptionGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing option group.
module Network.AWS.RDS.DeleteOptionGroup
  ( -- * Creating a Request
    deleteOptionGroup,
    DeleteOptionGroup,

    -- * Request Lenses
    dogOptionGroupName,

    -- * Destructuring the Response
    deleteOptionGroupResponse,
    DeleteOptionGroupResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'deleteOptionGroup' smart constructor.
newtype DeleteOptionGroup = DeleteOptionGroup'
  { _dogOptionGroupName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteOptionGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dogOptionGroupName' - The name of the option group to be deleted.
deleteOptionGroup ::
  -- | 'dogOptionGroupName'
  Text ->
  DeleteOptionGroup
deleteOptionGroup pOptionGroupName_ =
  DeleteOptionGroup'
    { _dogOptionGroupName =
        pOptionGroupName_
    }

-- | The name of the option group to be deleted.
dogOptionGroupName :: Lens' DeleteOptionGroup Text
dogOptionGroupName = lens _dogOptionGroupName (\s a -> s {_dogOptionGroupName = a})

instance AWSRequest DeleteOptionGroup where
  type Rs DeleteOptionGroup = DeleteOptionGroupResponse
  request = postQuery rds
  response = receiveNull DeleteOptionGroupResponse'

instance Hashable DeleteOptionGroup

instance NFData DeleteOptionGroup

instance ToHeaders DeleteOptionGroup where
  toHeaders = const mempty

instance ToPath DeleteOptionGroup where
  toPath = const "/"

instance ToQuery DeleteOptionGroup where
  toQuery DeleteOptionGroup' {..} =
    mconcat
      [ "Action" =: ("DeleteOptionGroup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "OptionGroupName" =: _dogOptionGroupName
      ]

-- | /See:/ 'deleteOptionGroupResponse' smart constructor.
data DeleteOptionGroupResponse = DeleteOptionGroupResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteOptionGroupResponse' with the minimum fields required to make a request.
deleteOptionGroupResponse ::
  DeleteOptionGroupResponse
deleteOptionGroupResponse =
  DeleteOptionGroupResponse'

instance NFData DeleteOptionGroupResponse
