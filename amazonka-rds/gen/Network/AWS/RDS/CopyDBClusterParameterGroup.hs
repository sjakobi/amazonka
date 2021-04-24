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
-- Module      : Network.AWS.RDS.CopyDBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified DB cluster parameter group.
module Network.AWS.RDS.CopyDBClusterParameterGroup
  ( -- * Creating a Request
    copyDBClusterParameterGroup,
    CopyDBClusterParameterGroup,

    -- * Request Lenses
    cdcpgTags,
    cdcpgSourceDBClusterParameterGroupIdentifier,
    cdcpgTargetDBClusterParameterGroupIdentifier,
    cdcpgTargetDBClusterParameterGroupDescription,

    -- * Destructuring the Response
    copyDBClusterParameterGroupResponse,
    CopyDBClusterParameterGroupResponse,

    -- * Response Lenses
    cdcpgrrsDBClusterParameterGroup,
    cdcpgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'copyDBClusterParameterGroup' smart constructor.
data CopyDBClusterParameterGroup = CopyDBClusterParameterGroup'
  { _cdcpgTags ::
      !(Maybe [Tag]),
    _cdcpgSourceDBClusterParameterGroupIdentifier ::
      !Text,
    _cdcpgTargetDBClusterParameterGroupIdentifier ::
      !Text,
    _cdcpgTargetDBClusterParameterGroupDescription ::
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

-- | Creates a value of 'CopyDBClusterParameterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcpgTags' - Undocumented member.
--
-- * 'cdcpgSourceDBClusterParameterGroupIdentifier' - The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing Constructing an ARN for Amazon RDS> in the /Amazon Aurora User Guide/ .  Constraints:     * Must specify a valid DB cluster parameter group.
--
-- * 'cdcpgTargetDBClusterParameterGroupIdentifier' - The identifier for the copied DB cluster parameter group. Constraints:     * Can't be null, empty, or blank     * Must contain from 1 to 255 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-cluster-param-group1@
--
-- * 'cdcpgTargetDBClusterParameterGroupDescription' - A description for the copied DB cluster parameter group.
copyDBClusterParameterGroup ::
  -- | 'cdcpgSourceDBClusterParameterGroupIdentifier'
  Text ->
  -- | 'cdcpgTargetDBClusterParameterGroupIdentifier'
  Text ->
  -- | 'cdcpgTargetDBClusterParameterGroupDescription'
  Text ->
  CopyDBClusterParameterGroup
copyDBClusterParameterGroup
  pSourceDBClusterParameterGroupIdentifier_
  pTargetDBClusterParameterGroupIdentifier_
  pTargetDBClusterParameterGroupDescription_ =
    CopyDBClusterParameterGroup'
      { _cdcpgTags = Nothing,
        _cdcpgSourceDBClusterParameterGroupIdentifier =
          pSourceDBClusterParameterGroupIdentifier_,
        _cdcpgTargetDBClusterParameterGroupIdentifier =
          pTargetDBClusterParameterGroupIdentifier_,
        _cdcpgTargetDBClusterParameterGroupDescription =
          pTargetDBClusterParameterGroupDescription_
      }

-- | Undocumented member.
cdcpgTags :: Lens' CopyDBClusterParameterGroup [Tag]
cdcpgTags = lens _cdcpgTags (\s a -> s {_cdcpgTags = a}) . _Default . _Coerce

-- | The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing Constructing an ARN for Amazon RDS> in the /Amazon Aurora User Guide/ .  Constraints:     * Must specify a valid DB cluster parameter group.
cdcpgSourceDBClusterParameterGroupIdentifier :: Lens' CopyDBClusterParameterGroup Text
cdcpgSourceDBClusterParameterGroupIdentifier = lens _cdcpgSourceDBClusterParameterGroupIdentifier (\s a -> s {_cdcpgSourceDBClusterParameterGroupIdentifier = a})

-- | The identifier for the copied DB cluster parameter group. Constraints:     * Can't be null, empty, or blank     * Must contain from 1 to 255 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-cluster-param-group1@
cdcpgTargetDBClusterParameterGroupIdentifier :: Lens' CopyDBClusterParameterGroup Text
cdcpgTargetDBClusterParameterGroupIdentifier = lens _cdcpgTargetDBClusterParameterGroupIdentifier (\s a -> s {_cdcpgTargetDBClusterParameterGroupIdentifier = a})

-- | A description for the copied DB cluster parameter group.
cdcpgTargetDBClusterParameterGroupDescription :: Lens' CopyDBClusterParameterGroup Text
cdcpgTargetDBClusterParameterGroupDescription = lens _cdcpgTargetDBClusterParameterGroupDescription (\s a -> s {_cdcpgTargetDBClusterParameterGroupDescription = a})

instance AWSRequest CopyDBClusterParameterGroup where
  type
    Rs CopyDBClusterParameterGroup =
      CopyDBClusterParameterGroupResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CopyDBClusterParameterGroupResult"
      ( \s h x ->
          CopyDBClusterParameterGroupResponse'
            <$> (x .@? "DBClusterParameterGroup")
            <*> (pure (fromEnum s))
      )

instance Hashable CopyDBClusterParameterGroup

instance NFData CopyDBClusterParameterGroup

instance ToHeaders CopyDBClusterParameterGroup where
  toHeaders = const mempty

instance ToPath CopyDBClusterParameterGroup where
  toPath = const "/"

instance ToQuery CopyDBClusterParameterGroup where
  toQuery CopyDBClusterParameterGroup' {..} =
    mconcat
      [ "Action"
          =: ("CopyDBClusterParameterGroup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Tags" =: toQuery (toQueryList "Tag" <$> _cdcpgTags),
        "SourceDBClusterParameterGroupIdentifier"
          =: _cdcpgSourceDBClusterParameterGroupIdentifier,
        "TargetDBClusterParameterGroupIdentifier"
          =: _cdcpgTargetDBClusterParameterGroupIdentifier,
        "TargetDBClusterParameterGroupDescription"
          =: _cdcpgTargetDBClusterParameterGroupDescription
      ]

-- | /See:/ 'copyDBClusterParameterGroupResponse' smart constructor.
data CopyDBClusterParameterGroupResponse = CopyDBClusterParameterGroupResponse'
  { _cdcpgrrsDBClusterParameterGroup ::
      !( Maybe
           DBClusterParameterGroup
       ),
    _cdcpgrrsResponseStatus ::
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

-- | Creates a value of 'CopyDBClusterParameterGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcpgrrsDBClusterParameterGroup' - Undocumented member.
--
-- * 'cdcpgrrsResponseStatus' - -- | The response status code.
copyDBClusterParameterGroupResponse ::
  -- | 'cdcpgrrsResponseStatus'
  Int ->
  CopyDBClusterParameterGroupResponse
copyDBClusterParameterGroupResponse pResponseStatus_ =
  CopyDBClusterParameterGroupResponse'
    { _cdcpgrrsDBClusterParameterGroup =
        Nothing,
      _cdcpgrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
cdcpgrrsDBClusterParameterGroup :: Lens' CopyDBClusterParameterGroupResponse (Maybe DBClusterParameterGroup)
cdcpgrrsDBClusterParameterGroup = lens _cdcpgrrsDBClusterParameterGroup (\s a -> s {_cdcpgrrsDBClusterParameterGroup = a})

-- | -- | The response status code.
cdcpgrrsResponseStatus :: Lens' CopyDBClusterParameterGroupResponse Int
cdcpgrrsResponseStatus = lens _cdcpgrrsResponseStatus (\s a -> s {_cdcpgrrsResponseStatus = a})

instance NFData CopyDBClusterParameterGroupResponse
