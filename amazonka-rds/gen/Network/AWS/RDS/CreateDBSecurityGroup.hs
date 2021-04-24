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
-- Module      : Network.AWS.RDS.CreateDBSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB security group. DB security groups control access to a DB instance.
module Network.AWS.RDS.CreateDBSecurityGroup
  ( -- * Creating a Request
    createDBSecurityGroup,
    CreateDBSecurityGroup,

    -- * Request Lenses
    cdsgTags,
    cdsgDBSecurityGroupName,
    cdsgDBSecurityGroupDescription,

    -- * Destructuring the Response
    createDBSecurityGroupResponse,
    CreateDBSecurityGroupResponse,

    -- * Response Lenses
    cdsgrrsDBSecurityGroup,
    cdsgrrsResponseStatus,
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
-- /See:/ 'createDBSecurityGroup' smart constructor.
data CreateDBSecurityGroup = CreateDBSecurityGroup'
  { _cdsgTags ::
      !(Maybe [Tag]),
    _cdsgDBSecurityGroupName ::
      !Text,
    _cdsgDBSecurityGroupDescription ::
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

-- | Creates a value of 'CreateDBSecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsgTags' - Tags to assign to the DB security group.
--
-- * 'cdsgDBSecurityGroupName' - The name for the DB security group. This value is stored as a lowercase string. Constraints:     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens     * Must not be "Default" Example: @mysecuritygroup@
--
-- * 'cdsgDBSecurityGroupDescription' - The description for the DB security group.
createDBSecurityGroup ::
  -- | 'cdsgDBSecurityGroupName'
  Text ->
  -- | 'cdsgDBSecurityGroupDescription'
  Text ->
  CreateDBSecurityGroup
createDBSecurityGroup
  pDBSecurityGroupName_
  pDBSecurityGroupDescription_ =
    CreateDBSecurityGroup'
      { _cdsgTags = Nothing,
        _cdsgDBSecurityGroupName = pDBSecurityGroupName_,
        _cdsgDBSecurityGroupDescription =
          pDBSecurityGroupDescription_
      }

-- | Tags to assign to the DB security group.
cdsgTags :: Lens' CreateDBSecurityGroup [Tag]
cdsgTags = lens _cdsgTags (\s a -> s {_cdsgTags = a}) . _Default . _Coerce

-- | The name for the DB security group. This value is stored as a lowercase string. Constraints:     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens     * Must not be "Default" Example: @mysecuritygroup@
cdsgDBSecurityGroupName :: Lens' CreateDBSecurityGroup Text
cdsgDBSecurityGroupName = lens _cdsgDBSecurityGroupName (\s a -> s {_cdsgDBSecurityGroupName = a})

-- | The description for the DB security group.
cdsgDBSecurityGroupDescription :: Lens' CreateDBSecurityGroup Text
cdsgDBSecurityGroupDescription = lens _cdsgDBSecurityGroupDescription (\s a -> s {_cdsgDBSecurityGroupDescription = a})

instance AWSRequest CreateDBSecurityGroup where
  type
    Rs CreateDBSecurityGroup =
      CreateDBSecurityGroupResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CreateDBSecurityGroupResult"
      ( \s h x ->
          CreateDBSecurityGroupResponse'
            <$> (x .@? "DBSecurityGroup") <*> (pure (fromEnum s))
      )

instance Hashable CreateDBSecurityGroup

instance NFData CreateDBSecurityGroup

instance ToHeaders CreateDBSecurityGroup where
  toHeaders = const mempty

instance ToPath CreateDBSecurityGroup where
  toPath = const "/"

instance ToQuery CreateDBSecurityGroup where
  toQuery CreateDBSecurityGroup' {..} =
    mconcat
      [ "Action" =: ("CreateDBSecurityGroup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Tags" =: toQuery (toQueryList "Tag" <$> _cdsgTags),
        "DBSecurityGroupName" =: _cdsgDBSecurityGroupName,
        "DBSecurityGroupDescription"
          =: _cdsgDBSecurityGroupDescription
      ]

-- | /See:/ 'createDBSecurityGroupResponse' smart constructor.
data CreateDBSecurityGroupResponse = CreateDBSecurityGroupResponse'
  { _cdsgrrsDBSecurityGroup ::
      !( Maybe
           DBSecurityGroup
       ),
    _cdsgrrsResponseStatus ::
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

-- | Creates a value of 'CreateDBSecurityGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdsgrrsDBSecurityGroup' - Undocumented member.
--
-- * 'cdsgrrsResponseStatus' - -- | The response status code.
createDBSecurityGroupResponse ::
  -- | 'cdsgrrsResponseStatus'
  Int ->
  CreateDBSecurityGroupResponse
createDBSecurityGroupResponse pResponseStatus_ =
  CreateDBSecurityGroupResponse'
    { _cdsgrrsDBSecurityGroup =
        Nothing,
      _cdsgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cdsgrrsDBSecurityGroup :: Lens' CreateDBSecurityGroupResponse (Maybe DBSecurityGroup)
cdsgrrsDBSecurityGroup = lens _cdsgrrsDBSecurityGroup (\s a -> s {_cdsgrrsDBSecurityGroup = a})

-- | -- | The response status code.
cdsgrrsResponseStatus :: Lens' CreateDBSecurityGroupResponse Int
cdsgrrsResponseStatus = lens _cdsgrrsResponseStatus (\s a -> s {_cdsgrrsResponseStatus = a})

instance NFData CreateDBSecurityGroupResponse
