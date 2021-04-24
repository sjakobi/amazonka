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
-- Module      : Network.AWS.IoT.DescribeRoleAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a role alias.
module Network.AWS.IoT.DescribeRoleAlias
  ( -- * Creating a Request
    describeRoleAlias,
    DescribeRoleAlias,

    -- * Request Lenses
    draRoleAlias,

    -- * Destructuring the Response
    describeRoleAliasResponse,
    DescribeRoleAliasResponse,

    -- * Response Lenses
    drarrsRoleAliasDescription,
    drarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRoleAlias' smart constructor.
newtype DescribeRoleAlias = DescribeRoleAlias'
  { _draRoleAlias ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRoleAlias' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'draRoleAlias' - The role alias to describe.
describeRoleAlias ::
  -- | 'draRoleAlias'
  Text ->
  DescribeRoleAlias
describeRoleAlias pRoleAlias_ =
  DescribeRoleAlias' {_draRoleAlias = pRoleAlias_}

-- | The role alias to describe.
draRoleAlias :: Lens' DescribeRoleAlias Text
draRoleAlias = lens _draRoleAlias (\s a -> s {_draRoleAlias = a})

instance AWSRequest DescribeRoleAlias where
  type Rs DescribeRoleAlias = DescribeRoleAliasResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeRoleAliasResponse'
            <$> (x .?> "roleAliasDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRoleAlias

instance NFData DescribeRoleAlias

instance ToHeaders DescribeRoleAlias where
  toHeaders = const mempty

instance ToPath DescribeRoleAlias where
  toPath DescribeRoleAlias' {..} =
    mconcat ["/role-aliases/", toBS _draRoleAlias]

instance ToQuery DescribeRoleAlias where
  toQuery = const mempty

-- | /See:/ 'describeRoleAliasResponse' smart constructor.
data DescribeRoleAliasResponse = DescribeRoleAliasResponse'
  { _drarrsRoleAliasDescription ::
      !( Maybe
           RoleAliasDescription
       ),
    _drarrsResponseStatus ::
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

-- | Creates a value of 'DescribeRoleAliasResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drarrsRoleAliasDescription' - The role alias description.
--
-- * 'drarrsResponseStatus' - -- | The response status code.
describeRoleAliasResponse ::
  -- | 'drarrsResponseStatus'
  Int ->
  DescribeRoleAliasResponse
describeRoleAliasResponse pResponseStatus_ =
  DescribeRoleAliasResponse'
    { _drarrsRoleAliasDescription =
        Nothing,
      _drarrsResponseStatus = pResponseStatus_
    }

-- | The role alias description.
drarrsRoleAliasDescription :: Lens' DescribeRoleAliasResponse (Maybe RoleAliasDescription)
drarrsRoleAliasDescription = lens _drarrsRoleAliasDescription (\s a -> s {_drarrsRoleAliasDescription = a})

-- | -- | The response status code.
drarrsResponseStatus :: Lens' DescribeRoleAliasResponse Int
drarrsResponseStatus = lens _drarrsResponseStatus (\s a -> s {_drarrsResponseStatus = a})

instance NFData DescribeRoleAliasResponse
