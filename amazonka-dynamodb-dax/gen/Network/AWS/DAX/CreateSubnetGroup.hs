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
-- Module      : Network.AWS.DAX.CreateSubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new subnet group.
module Network.AWS.DAX.CreateSubnetGroup
  ( -- * Creating a Request
    createSubnetGroup,
    CreateSubnetGroup,

    -- * Request Lenses
    csgDescription,
    csgSubnetGroupName,
    csgSubnetIds,

    -- * Destructuring the Response
    createSubnetGroupResponse,
    CreateSubnetGroupResponse,

    -- * Response Lenses
    csgrrsSubnetGroup,
    csgrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSubnetGroup' smart constructor.
data CreateSubnetGroup = CreateSubnetGroup'
  { _csgDescription ::
      !(Maybe Text),
    _csgSubnetGroupName :: !Text,
    _csgSubnetIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSubnetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csgDescription' - A description for the subnet group
--
-- * 'csgSubnetGroupName' - A name for the subnet group. This value is stored as a lowercase string.
--
-- * 'csgSubnetIds' - A list of VPC subnet IDs for the subnet group.
createSubnetGroup ::
  -- | 'csgSubnetGroupName'
  Text ->
  CreateSubnetGroup
createSubnetGroup pSubnetGroupName_ =
  CreateSubnetGroup'
    { _csgDescription = Nothing,
      _csgSubnetGroupName = pSubnetGroupName_,
      _csgSubnetIds = mempty
    }

-- | A description for the subnet group
csgDescription :: Lens' CreateSubnetGroup (Maybe Text)
csgDescription = lens _csgDescription (\s a -> s {_csgDescription = a})

-- | A name for the subnet group. This value is stored as a lowercase string.
csgSubnetGroupName :: Lens' CreateSubnetGroup Text
csgSubnetGroupName = lens _csgSubnetGroupName (\s a -> s {_csgSubnetGroupName = a})

-- | A list of VPC subnet IDs for the subnet group.
csgSubnetIds :: Lens' CreateSubnetGroup [Text]
csgSubnetIds = lens _csgSubnetIds (\s a -> s {_csgSubnetIds = a}) . _Coerce

instance AWSRequest CreateSubnetGroup where
  type Rs CreateSubnetGroup = CreateSubnetGroupResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          CreateSubnetGroupResponse'
            <$> (x .?> "SubnetGroup") <*> (pure (fromEnum s))
      )

instance Hashable CreateSubnetGroup

instance NFData CreateSubnetGroup

instance ToHeaders CreateSubnetGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDAXV3.CreateSubnetGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSubnetGroup where
  toJSON CreateSubnetGroup' {..} =
    object
      ( catMaybes
          [ ("Description" .=) <$> _csgDescription,
            Just ("SubnetGroupName" .= _csgSubnetGroupName),
            Just ("SubnetIds" .= _csgSubnetIds)
          ]
      )

instance ToPath CreateSubnetGroup where
  toPath = const "/"

instance ToQuery CreateSubnetGroup where
  toQuery = const mempty

-- | /See:/ 'createSubnetGroupResponse' smart constructor.
data CreateSubnetGroupResponse = CreateSubnetGroupResponse'
  { _csgrrsSubnetGroup ::
      !( Maybe
           SubnetGroup
       ),
    _csgrrsResponseStatus ::
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

-- | Creates a value of 'CreateSubnetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csgrrsSubnetGroup' - Represents the output of a /CreateSubnetGroup/ operation.
--
-- * 'csgrrsResponseStatus' - -- | The response status code.
createSubnetGroupResponse ::
  -- | 'csgrrsResponseStatus'
  Int ->
  CreateSubnetGroupResponse
createSubnetGroupResponse pResponseStatus_ =
  CreateSubnetGroupResponse'
    { _csgrrsSubnetGroup =
        Nothing,
      _csgrrsResponseStatus = pResponseStatus_
    }

-- | Represents the output of a /CreateSubnetGroup/ operation.
csgrrsSubnetGroup :: Lens' CreateSubnetGroupResponse (Maybe SubnetGroup)
csgrrsSubnetGroup = lens _csgrrsSubnetGroup (\s a -> s {_csgrrsSubnetGroup = a})

-- | -- | The response status code.
csgrrsResponseStatus :: Lens' CreateSubnetGroupResponse Int
csgrrsResponseStatus = lens _csgrrsResponseStatus (\s a -> s {_csgrrsResponseStatus = a})

instance NFData CreateSubnetGroupResponse
