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
-- Module      : Network.AWS.RDS.CopyOptionGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified option group.
module Network.AWS.RDS.CopyOptionGroup
  ( -- * Creating a Request
    copyOptionGroup,
    CopyOptionGroup,

    -- * Request Lenses
    cogTags,
    cogSourceOptionGroupIdentifier,
    cogTargetOptionGroupIdentifier,
    cogTargetOptionGroupDescription,

    -- * Destructuring the Response
    copyOptionGroupResponse,
    CopyOptionGroupResponse,

    -- * Response Lenses
    crsOptionGroup,
    crsResponseStatus,
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
-- /See:/ 'copyOptionGroup' smart constructor.
data CopyOptionGroup = CopyOptionGroup'
  { _cogTags ::
      !(Maybe [Tag]),
    _cogSourceOptionGroupIdentifier ::
      !Text,
    _cogTargetOptionGroupIdentifier ::
      !Text,
    _cogTargetOptionGroupDescription ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyOptionGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cogTags' - Undocumented member.
--
-- * 'cogSourceOptionGroupIdentifier' - The identifier for the source option group.  Constraints:     * Must specify a valid option group.
--
-- * 'cogTargetOptionGroupIdentifier' - The identifier for the copied option group. Constraints:     * Can't be null, empty, or blank     * Must contain from 1 to 255 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-option-group@
--
-- * 'cogTargetOptionGroupDescription' - The description for the copied option group.
copyOptionGroup ::
  -- | 'cogSourceOptionGroupIdentifier'
  Text ->
  -- | 'cogTargetOptionGroupIdentifier'
  Text ->
  -- | 'cogTargetOptionGroupDescription'
  Text ->
  CopyOptionGroup
copyOptionGroup
  pSourceOptionGroupIdentifier_
  pTargetOptionGroupIdentifier_
  pTargetOptionGroupDescription_ =
    CopyOptionGroup'
      { _cogTags = Nothing,
        _cogSourceOptionGroupIdentifier =
          pSourceOptionGroupIdentifier_,
        _cogTargetOptionGroupIdentifier =
          pTargetOptionGroupIdentifier_,
        _cogTargetOptionGroupDescription =
          pTargetOptionGroupDescription_
      }

-- | Undocumented member.
cogTags :: Lens' CopyOptionGroup [Tag]
cogTags = lens _cogTags (\s a -> s {_cogTags = a}) . _Default . _Coerce

-- | The identifier for the source option group.  Constraints:     * Must specify a valid option group.
cogSourceOptionGroupIdentifier :: Lens' CopyOptionGroup Text
cogSourceOptionGroupIdentifier = lens _cogSourceOptionGroupIdentifier (\s a -> s {_cogSourceOptionGroupIdentifier = a})

-- | The identifier for the copied option group. Constraints:     * Can't be null, empty, or blank     * Must contain from 1 to 255 letters, numbers, or hyphens     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens Example: @my-option-group@
cogTargetOptionGroupIdentifier :: Lens' CopyOptionGroup Text
cogTargetOptionGroupIdentifier = lens _cogTargetOptionGroupIdentifier (\s a -> s {_cogTargetOptionGroupIdentifier = a})

-- | The description for the copied option group.
cogTargetOptionGroupDescription :: Lens' CopyOptionGroup Text
cogTargetOptionGroupDescription = lens _cogTargetOptionGroupDescription (\s a -> s {_cogTargetOptionGroupDescription = a})

instance AWSRequest CopyOptionGroup where
  type Rs CopyOptionGroup = CopyOptionGroupResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CopyOptionGroupResult"
      ( \s h x ->
          CopyOptionGroupResponse'
            <$> (x .@? "OptionGroup") <*> (pure (fromEnum s))
      )

instance Hashable CopyOptionGroup

instance NFData CopyOptionGroup

instance ToHeaders CopyOptionGroup where
  toHeaders = const mempty

instance ToPath CopyOptionGroup where
  toPath = const "/"

instance ToQuery CopyOptionGroup where
  toQuery CopyOptionGroup' {..} =
    mconcat
      [ "Action" =: ("CopyOptionGroup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Tags" =: toQuery (toQueryList "Tag" <$> _cogTags),
        "SourceOptionGroupIdentifier"
          =: _cogSourceOptionGroupIdentifier,
        "TargetOptionGroupIdentifier"
          =: _cogTargetOptionGroupIdentifier,
        "TargetOptionGroupDescription"
          =: _cogTargetOptionGroupDescription
      ]

-- | /See:/ 'copyOptionGroupResponse' smart constructor.
data CopyOptionGroupResponse = CopyOptionGroupResponse'
  { _crsOptionGroup ::
      !(Maybe OptionGroup),
    _crsResponseStatus ::
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

-- | Creates a value of 'CopyOptionGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsOptionGroup' - Undocumented member.
--
-- * 'crsResponseStatus' - -- | The response status code.
copyOptionGroupResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CopyOptionGroupResponse
copyOptionGroupResponse pResponseStatus_ =
  CopyOptionGroupResponse'
    { _crsOptionGroup = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
crsOptionGroup :: Lens' CopyOptionGroupResponse (Maybe OptionGroup)
crsOptionGroup = lens _crsOptionGroup (\s a -> s {_crsOptionGroup = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CopyOptionGroupResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CopyOptionGroupResponse
