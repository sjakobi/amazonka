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
-- Module      : Network.AWS.RDS.CopyDBParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified DB parameter group.
module Network.AWS.RDS.CopyDBParameterGroup
  ( -- * Creating a Request
    copyDBParameterGroup,
    CopyDBParameterGroup,

    -- * Request Lenses
    cdbpgTags,
    cdbpgSourceDBParameterGroupIdentifier,
    cdbpgTargetDBParameterGroupIdentifier,
    cdbpgTargetDBParameterGroupDescription,

    -- * Destructuring the Response
    copyDBParameterGroupResponse,
    CopyDBParameterGroupResponse,

    -- * Response Lenses
    cdpgrrsDBParameterGroup,
    cdpgrrsResponseStatus,
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
-- /See:/ 'copyDBParameterGroup' smart constructor.
data CopyDBParameterGroup = CopyDBParameterGroup'
  { _cdbpgTags ::
      !(Maybe [Tag]),
    _cdbpgSourceDBParameterGroupIdentifier ::
      !Text,
    _cdbpgTargetDBParameterGroupIdentifier ::
      !Text,
    _cdbpgTargetDBParameterGroupDescription ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyDBParameterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdbpgTags' - Undocumented member.
--
-- * 'cdbpgSourceDBParameterGroupIdentifier' - The identifier or ARN for the source DB parameter group. For information about creating an ARN, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing Constructing an ARN for Amazon RDS> in the /Amazon RDS User Guide/ .  Constraints:     * Must specify a valid DB parameter group.
--
-- * 'cdbpgTargetDBParameterGroupIdentifier' - The identifier for the copied DB parameter group. Constraints:     * Can't be null, empty, or blank     * Must contain from 1 to 255 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-db-parameter-group@
--
-- * 'cdbpgTargetDBParameterGroupDescription' - A description for the copied DB parameter group.
copyDBParameterGroup ::
  -- | 'cdbpgSourceDBParameterGroupIdentifier'
  Text ->
  -- | 'cdbpgTargetDBParameterGroupIdentifier'
  Text ->
  -- | 'cdbpgTargetDBParameterGroupDescription'
  Text ->
  CopyDBParameterGroup
copyDBParameterGroup
  pSourceDBParameterGroupIdentifier_
  pTargetDBParameterGroupIdentifier_
  pTargetDBParameterGroupDescription_ =
    CopyDBParameterGroup'
      { _cdbpgTags = Nothing,
        _cdbpgSourceDBParameterGroupIdentifier =
          pSourceDBParameterGroupIdentifier_,
        _cdbpgTargetDBParameterGroupIdentifier =
          pTargetDBParameterGroupIdentifier_,
        _cdbpgTargetDBParameterGroupDescription =
          pTargetDBParameterGroupDescription_
      }

-- | Undocumented member.
cdbpgTags :: Lens' CopyDBParameterGroup [Tag]
cdbpgTags = lens _cdbpgTags (\s a -> s {_cdbpgTags = a}) . _Default . _Coerce

-- | The identifier or ARN for the source DB parameter group. For information about creating an ARN, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing Constructing an ARN for Amazon RDS> in the /Amazon RDS User Guide/ .  Constraints:     * Must specify a valid DB parameter group.
cdbpgSourceDBParameterGroupIdentifier :: Lens' CopyDBParameterGroup Text
cdbpgSourceDBParameterGroupIdentifier = lens _cdbpgSourceDBParameterGroupIdentifier (\s a -> s {_cdbpgSourceDBParameterGroupIdentifier = a})

-- | The identifier for the copied DB parameter group. Constraints:     * Can't be null, empty, or blank     * Must contain from 1 to 255 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-db-parameter-group@
cdbpgTargetDBParameterGroupIdentifier :: Lens' CopyDBParameterGroup Text
cdbpgTargetDBParameterGroupIdentifier = lens _cdbpgTargetDBParameterGroupIdentifier (\s a -> s {_cdbpgTargetDBParameterGroupIdentifier = a})

-- | A description for the copied DB parameter group.
cdbpgTargetDBParameterGroupDescription :: Lens' CopyDBParameterGroup Text
cdbpgTargetDBParameterGroupDescription = lens _cdbpgTargetDBParameterGroupDescription (\s a -> s {_cdbpgTargetDBParameterGroupDescription = a})

instance AWSRequest CopyDBParameterGroup where
  type
    Rs CopyDBParameterGroup =
      CopyDBParameterGroupResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CopyDBParameterGroupResult"
      ( \s h x ->
          CopyDBParameterGroupResponse'
            <$> (x .@? "DBParameterGroup") <*> (pure (fromEnum s))
      )

instance Hashable CopyDBParameterGroup

instance NFData CopyDBParameterGroup

instance ToHeaders CopyDBParameterGroup where
  toHeaders = const mempty

instance ToPath CopyDBParameterGroup where
  toPath = const "/"

instance ToQuery CopyDBParameterGroup where
  toQuery CopyDBParameterGroup' {..} =
    mconcat
      [ "Action" =: ("CopyDBParameterGroup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Tags" =: toQuery (toQueryList "Tag" <$> _cdbpgTags),
        "SourceDBParameterGroupIdentifier"
          =: _cdbpgSourceDBParameterGroupIdentifier,
        "TargetDBParameterGroupIdentifier"
          =: _cdbpgTargetDBParameterGroupIdentifier,
        "TargetDBParameterGroupDescription"
          =: _cdbpgTargetDBParameterGroupDescription
      ]

-- | /See:/ 'copyDBParameterGroupResponse' smart constructor.
data CopyDBParameterGroupResponse = CopyDBParameterGroupResponse'
  { _cdpgrrsDBParameterGroup ::
      !( Maybe
           DBParameterGroup
       ),
    _cdpgrrsResponseStatus ::
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

-- | Creates a value of 'CopyDBParameterGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdpgrrsDBParameterGroup' - Undocumented member.
--
-- * 'cdpgrrsResponseStatus' - -- | The response status code.
copyDBParameterGroupResponse ::
  -- | 'cdpgrrsResponseStatus'
  Int ->
  CopyDBParameterGroupResponse
copyDBParameterGroupResponse pResponseStatus_ =
  CopyDBParameterGroupResponse'
    { _cdpgrrsDBParameterGroup =
        Nothing,
      _cdpgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cdpgrrsDBParameterGroup :: Lens' CopyDBParameterGroupResponse (Maybe DBParameterGroup)
cdpgrrsDBParameterGroup = lens _cdpgrrsDBParameterGroup (\s a -> s {_cdpgrrsDBParameterGroup = a})

-- | -- | The response status code.
cdpgrrsResponseStatus :: Lens' CopyDBParameterGroupResponse Int
cdpgrrsResponseStatus = lens _cdpgrrsResponseStatus (\s a -> s {_cdpgrrsResponseStatus = a})

instance NFData CopyDBParameterGroupResponse
