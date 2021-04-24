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
-- Module      : Network.AWS.RDS.CreateDBParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB parameter group.
--
--
-- A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using /ModifyDBParameterGroup/ . Once you've created a DB parameter group, you need to associate it with your DB instance using /ModifyDBInstance/ . When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect.
--
-- /Important:/ After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the @character_set_database@ parameter. You can use the /Parameter Groups/ option of the <https://console.aws.amazon.com/rds/ Amazon RDS console> or the /DescribeDBParameters/ command to verify that your DB parameter group has been created or modified.
module Network.AWS.RDS.CreateDBParameterGroup
  ( -- * Creating a Request
    createDBParameterGroup,
    CreateDBParameterGroup,

    -- * Request Lenses
    cdpgTags,
    cdpgDBParameterGroupName,
    cdpgDBParameterGroupFamily,
    cdpgDescription,

    -- * Destructuring the Response
    createDBParameterGroupResponse,
    CreateDBParameterGroupResponse,

    -- * Response Lenses
    cdbpgrrsDBParameterGroup,
    cdbpgrrsResponseStatus,
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
-- /See:/ 'createDBParameterGroup' smart constructor.
data CreateDBParameterGroup = CreateDBParameterGroup'
  { _cdpgTags ::
      !(Maybe [Tag]),
    _cdpgDBParameterGroupName ::
      !Text,
    _cdpgDBParameterGroupFamily ::
      !Text,
    _cdpgDescription :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDBParameterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdpgTags' - Tags to assign to the DB parameter group.
--
-- * 'cdpgDBParameterGroupName' - The name of the DB parameter group. Constraints:     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens
--
-- * 'cdpgDBParameterGroupFamily' - The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family. To list all of the available parameter group families, use the following command: @aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily"@
--
-- * 'cdpgDescription' - The description for the DB parameter group.
createDBParameterGroup ::
  -- | 'cdpgDBParameterGroupName'
  Text ->
  -- | 'cdpgDBParameterGroupFamily'
  Text ->
  -- | 'cdpgDescription'
  Text ->
  CreateDBParameterGroup
createDBParameterGroup
  pDBParameterGroupName_
  pDBParameterGroupFamily_
  pDescription_ =
    CreateDBParameterGroup'
      { _cdpgTags = Nothing,
        _cdpgDBParameterGroupName = pDBParameterGroupName_,
        _cdpgDBParameterGroupFamily =
          pDBParameterGroupFamily_,
        _cdpgDescription = pDescription_
      }

-- | Tags to assign to the DB parameter group.
cdpgTags :: Lens' CreateDBParameterGroup [Tag]
cdpgTags = lens _cdpgTags (\s a -> s {_cdpgTags = a}) . _Default . _Coerce

-- | The name of the DB parameter group. Constraints:     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens
cdpgDBParameterGroupName :: Lens' CreateDBParameterGroup Text
cdpgDBParameterGroupName = lens _cdpgDBParameterGroupName (\s a -> s {_cdpgDBParameterGroupName = a})

-- | The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family. To list all of the available parameter group families, use the following command: @aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily"@
cdpgDBParameterGroupFamily :: Lens' CreateDBParameterGroup Text
cdpgDBParameterGroupFamily = lens _cdpgDBParameterGroupFamily (\s a -> s {_cdpgDBParameterGroupFamily = a})

-- | The description for the DB parameter group.
cdpgDescription :: Lens' CreateDBParameterGroup Text
cdpgDescription = lens _cdpgDescription (\s a -> s {_cdpgDescription = a})

instance AWSRequest CreateDBParameterGroup where
  type
    Rs CreateDBParameterGroup =
      CreateDBParameterGroupResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CreateDBParameterGroupResult"
      ( \s h x ->
          CreateDBParameterGroupResponse'
            <$> (x .@? "DBParameterGroup") <*> (pure (fromEnum s))
      )

instance Hashable CreateDBParameterGroup

instance NFData CreateDBParameterGroup

instance ToHeaders CreateDBParameterGroup where
  toHeaders = const mempty

instance ToPath CreateDBParameterGroup where
  toPath = const "/"

instance ToQuery CreateDBParameterGroup where
  toQuery CreateDBParameterGroup' {..} =
    mconcat
      [ "Action"
          =: ("CreateDBParameterGroup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Tags" =: toQuery (toQueryList "Tag" <$> _cdpgTags),
        "DBParameterGroupName" =: _cdpgDBParameterGroupName,
        "DBParameterGroupFamily"
          =: _cdpgDBParameterGroupFamily,
        "Description" =: _cdpgDescription
      ]

-- | /See:/ 'createDBParameterGroupResponse' smart constructor.
data CreateDBParameterGroupResponse = CreateDBParameterGroupResponse'
  { _cdbpgrrsDBParameterGroup ::
      !( Maybe
           DBParameterGroup
       ),
    _cdbpgrrsResponseStatus ::
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

-- | Creates a value of 'CreateDBParameterGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdbpgrrsDBParameterGroup' - Undocumented member.
--
-- * 'cdbpgrrsResponseStatus' - -- | The response status code.
createDBParameterGroupResponse ::
  -- | 'cdbpgrrsResponseStatus'
  Int ->
  CreateDBParameterGroupResponse
createDBParameterGroupResponse pResponseStatus_ =
  CreateDBParameterGroupResponse'
    { _cdbpgrrsDBParameterGroup =
        Nothing,
      _cdbpgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cdbpgrrsDBParameterGroup :: Lens' CreateDBParameterGroupResponse (Maybe DBParameterGroup)
cdbpgrrsDBParameterGroup = lens _cdbpgrrsDBParameterGroup (\s a -> s {_cdbpgrrsDBParameterGroup = a})

-- | -- | The response status code.
cdbpgrrsResponseStatus :: Lens' CreateDBParameterGroupResponse Int
cdbpgrrsResponseStatus = lens _cdbpgrrsResponseStatus (\s a -> s {_cdbpgrrsResponseStatus = a})

instance NFData CreateDBParameterGroupResponse
