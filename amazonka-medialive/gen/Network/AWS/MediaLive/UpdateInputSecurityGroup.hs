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
-- Module      : Network.AWS.MediaLive.UpdateInputSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an Input Security Group's Whilelists.
module Network.AWS.MediaLive.UpdateInputSecurityGroup
  ( -- * Creating a Request
    updateInputSecurityGroup,
    UpdateInputSecurityGroup,

    -- * Request Lenses
    uisgTags,
    uisgWhitelistRules,
    uisgInputSecurityGroupId,

    -- * Destructuring the Response
    updateInputSecurityGroupResponse,
    UpdateInputSecurityGroupResponse,

    -- * Response Lenses
    uisgrrsSecurityGroup,
    uisgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to update some combination of the Input Security Group name and the IPv4 CIDRs the Input Security Group should allow.
--
-- /See:/ 'updateInputSecurityGroup' smart constructor.
data UpdateInputSecurityGroup = UpdateInputSecurityGroup'
  { _uisgTags ::
      !( Maybe
           (Map Text Text)
       ),
    _uisgWhitelistRules ::
      !( Maybe
           [InputWhitelistRuleCidr]
       ),
    _uisgInputSecurityGroupId ::
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

-- | Creates a value of 'UpdateInputSecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uisgTags' - A collection of key-value pairs.
--
-- * 'uisgWhitelistRules' - List of IPv4 CIDR addresses to whitelist
--
-- * 'uisgInputSecurityGroupId' - The id of the Input Security Group to update.
updateInputSecurityGroup ::
  -- | 'uisgInputSecurityGroupId'
  Text ->
  UpdateInputSecurityGroup
updateInputSecurityGroup pInputSecurityGroupId_ =
  UpdateInputSecurityGroup'
    { _uisgTags = Nothing,
      _uisgWhitelistRules = Nothing,
      _uisgInputSecurityGroupId =
        pInputSecurityGroupId_
    }

-- | A collection of key-value pairs.
uisgTags :: Lens' UpdateInputSecurityGroup (HashMap Text Text)
uisgTags = lens _uisgTags (\s a -> s {_uisgTags = a}) . _Default . _Map

-- | List of IPv4 CIDR addresses to whitelist
uisgWhitelistRules :: Lens' UpdateInputSecurityGroup [InputWhitelistRuleCidr]
uisgWhitelistRules = lens _uisgWhitelistRules (\s a -> s {_uisgWhitelistRules = a}) . _Default . _Coerce

-- | The id of the Input Security Group to update.
uisgInputSecurityGroupId :: Lens' UpdateInputSecurityGroup Text
uisgInputSecurityGroupId = lens _uisgInputSecurityGroupId (\s a -> s {_uisgInputSecurityGroupId = a})

instance AWSRequest UpdateInputSecurityGroup where
  type
    Rs UpdateInputSecurityGroup =
      UpdateInputSecurityGroupResponse
  request = putJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          UpdateInputSecurityGroupResponse'
            <$> (x .?> "securityGroup") <*> (pure (fromEnum s))
      )

instance Hashable UpdateInputSecurityGroup

instance NFData UpdateInputSecurityGroup

instance ToHeaders UpdateInputSecurityGroup where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateInputSecurityGroup where
  toJSON UpdateInputSecurityGroup' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _uisgTags,
            ("whitelistRules" .=) <$> _uisgWhitelistRules
          ]
      )

instance ToPath UpdateInputSecurityGroup where
  toPath UpdateInputSecurityGroup' {..} =
    mconcat
      [ "/prod/inputSecurityGroups/",
        toBS _uisgInputSecurityGroupId
      ]

instance ToQuery UpdateInputSecurityGroup where
  toQuery = const mempty

-- | Placeholder documentation for UpdateInputSecurityGroupResponse
--
-- /See:/ 'updateInputSecurityGroupResponse' smart constructor.
data UpdateInputSecurityGroupResponse = UpdateInputSecurityGroupResponse'
  { _uisgrrsSecurityGroup ::
      !( Maybe
           InputSecurityGroup
       ),
    _uisgrrsResponseStatus ::
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

-- | Creates a value of 'UpdateInputSecurityGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uisgrrsSecurityGroup' - Undocumented member.
--
-- * 'uisgrrsResponseStatus' - -- | The response status code.
updateInputSecurityGroupResponse ::
  -- | 'uisgrrsResponseStatus'
  Int ->
  UpdateInputSecurityGroupResponse
updateInputSecurityGroupResponse pResponseStatus_ =
  UpdateInputSecurityGroupResponse'
    { _uisgrrsSecurityGroup =
        Nothing,
      _uisgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
uisgrrsSecurityGroup :: Lens' UpdateInputSecurityGroupResponse (Maybe InputSecurityGroup)
uisgrrsSecurityGroup = lens _uisgrrsSecurityGroup (\s a -> s {_uisgrrsSecurityGroup = a})

-- | -- | The response status code.
uisgrrsResponseStatus :: Lens' UpdateInputSecurityGroupResponse Int
uisgrrsResponseStatus = lens _uisgrrsResponseStatus (\s a -> s {_uisgrrsResponseStatus = a})

instance NFData UpdateInputSecurityGroupResponse
