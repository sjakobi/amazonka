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
-- Module      : Network.AWS.RDS.CreateOptionGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new option group. You can create up to 20 option groups.
module Network.AWS.RDS.CreateOptionGroup
  ( -- * Creating a Request
    createOptionGroup,
    CreateOptionGroup,

    -- * Request Lenses
    cTags,
    cOptionGroupName,
    cEngineName,
    cMajorEngineVersion,
    cOptionGroupDescription,

    -- * Destructuring the Response
    createOptionGroupResponse,
    CreateOptionGroupResponse,

    -- * Response Lenses
    cogrrsOptionGroup,
    cogrrsResponseStatus,
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
-- /See:/ 'createOptionGroup' smart constructor.
data CreateOptionGroup = CreateOptionGroup'
  { _cTags ::
      !(Maybe [Tag]),
    _cOptionGroupName :: !Text,
    _cEngineName :: !Text,
    _cMajorEngineVersion :: !Text,
    _cOptionGroupDescription :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateOptionGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cTags' - Tags to assign to the option group.
--
-- * 'cOptionGroupName' - Specifies the name of the option group to be created. Constraints:     * Must be 1 to 255 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @myoptiongroup@
--
-- * 'cEngineName' - Specifies the name of the engine that this option group should be associated with. Valid Values:      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
--
-- * 'cMajorEngineVersion' - Specifies the major version of the engine that this option group should be associated with.
--
-- * 'cOptionGroupDescription' - The description of the option group.
createOptionGroup ::
  -- | 'cOptionGroupName'
  Text ->
  -- | 'cEngineName'
  Text ->
  -- | 'cMajorEngineVersion'
  Text ->
  -- | 'cOptionGroupDescription'
  Text ->
  CreateOptionGroup
createOptionGroup
  pOptionGroupName_
  pEngineName_
  pMajorEngineVersion_
  pOptionGroupDescription_ =
    CreateOptionGroup'
      { _cTags = Nothing,
        _cOptionGroupName = pOptionGroupName_,
        _cEngineName = pEngineName_,
        _cMajorEngineVersion = pMajorEngineVersion_,
        _cOptionGroupDescription = pOptionGroupDescription_
      }

-- | Tags to assign to the option group.
cTags :: Lens' CreateOptionGroup [Tag]
cTags = lens _cTags (\s a -> s {_cTags = a}) . _Default . _Coerce

-- | Specifies the name of the option group to be created. Constraints:     * Must be 1 to 255 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @myoptiongroup@
cOptionGroupName :: Lens' CreateOptionGroup Text
cOptionGroupName = lens _cOptionGroupName (\s a -> s {_cOptionGroupName = a})

-- | Specifies the name of the engine that this option group should be associated with. Valid Values:      * @mariadb@      * @mysql@      * @oracle-ee@      * @oracle-se2@      * @oracle-se1@      * @oracle-se@      * @postgres@      * @sqlserver-ee@      * @sqlserver-se@      * @sqlserver-ex@      * @sqlserver-web@
cEngineName :: Lens' CreateOptionGroup Text
cEngineName = lens _cEngineName (\s a -> s {_cEngineName = a})

-- | Specifies the major version of the engine that this option group should be associated with.
cMajorEngineVersion :: Lens' CreateOptionGroup Text
cMajorEngineVersion = lens _cMajorEngineVersion (\s a -> s {_cMajorEngineVersion = a})

-- | The description of the option group.
cOptionGroupDescription :: Lens' CreateOptionGroup Text
cOptionGroupDescription = lens _cOptionGroupDescription (\s a -> s {_cOptionGroupDescription = a})

instance AWSRequest CreateOptionGroup where
  type Rs CreateOptionGroup = CreateOptionGroupResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CreateOptionGroupResult"
      ( \s h x ->
          CreateOptionGroupResponse'
            <$> (x .@? "OptionGroup") <*> (pure (fromEnum s))
      )

instance Hashable CreateOptionGroup

instance NFData CreateOptionGroup

instance ToHeaders CreateOptionGroup where
  toHeaders = const mempty

instance ToPath CreateOptionGroup where
  toPath = const "/"

instance ToQuery CreateOptionGroup where
  toQuery CreateOptionGroup' {..} =
    mconcat
      [ "Action" =: ("CreateOptionGroup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Tags" =: toQuery (toQueryList "Tag" <$> _cTags),
        "OptionGroupName" =: _cOptionGroupName,
        "EngineName" =: _cEngineName,
        "MajorEngineVersion" =: _cMajorEngineVersion,
        "OptionGroupDescription" =: _cOptionGroupDescription
      ]

-- | /See:/ 'createOptionGroupResponse' smart constructor.
data CreateOptionGroupResponse = CreateOptionGroupResponse'
  { _cogrrsOptionGroup ::
      !( Maybe
           OptionGroup
       ),
    _cogrrsResponseStatus ::
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

-- | Creates a value of 'CreateOptionGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cogrrsOptionGroup' - Undocumented member.
--
-- * 'cogrrsResponseStatus' - -- | The response status code.
createOptionGroupResponse ::
  -- | 'cogrrsResponseStatus'
  Int ->
  CreateOptionGroupResponse
createOptionGroupResponse pResponseStatus_ =
  CreateOptionGroupResponse'
    { _cogrrsOptionGroup =
        Nothing,
      _cogrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cogrrsOptionGroup :: Lens' CreateOptionGroupResponse (Maybe OptionGroup)
cogrrsOptionGroup = lens _cogrrsOptionGroup (\s a -> s {_cogrrsOptionGroup = a})

-- | -- | The response status code.
cogrrsResponseStatus :: Lens' CreateOptionGroupResponse Int
cogrrsResponseStatus = lens _cogrrsResponseStatus (\s a -> s {_cogrrsResponseStatus = a})

instance NFData CreateOptionGroupResponse
