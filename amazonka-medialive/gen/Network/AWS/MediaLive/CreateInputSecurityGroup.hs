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
-- Module      : Network.AWS.MediaLive.CreateInputSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Input Security Group
module Network.AWS.MediaLive.CreateInputSecurityGroup
  ( -- * Creating a Request
    createInputSecurityGroup,
    CreateInputSecurityGroup,

    -- * Request Lenses
    cisgTags,
    cisgWhitelistRules,

    -- * Destructuring the Response
    createInputSecurityGroupResponse,
    CreateInputSecurityGroupResponse,

    -- * Response Lenses
    cisgrrsSecurityGroup,
    cisgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The IPv4 CIDRs to whitelist for this Input Security Group
--
-- /See:/ 'createInputSecurityGroup' smart constructor.
data CreateInputSecurityGroup = CreateInputSecurityGroup'
  { _cisgTags ::
      !( Maybe
           (Map Text Text)
       ),
    _cisgWhitelistRules ::
      !( Maybe
           [InputWhitelistRuleCidr]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateInputSecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cisgTags' - A collection of key-value pairs.
--
-- * 'cisgWhitelistRules' - List of IPv4 CIDR addresses to whitelist
createInputSecurityGroup ::
  CreateInputSecurityGroup
createInputSecurityGroup =
  CreateInputSecurityGroup'
    { _cisgTags = Nothing,
      _cisgWhitelistRules = Nothing
    }

-- | A collection of key-value pairs.
cisgTags :: Lens' CreateInputSecurityGroup (HashMap Text Text)
cisgTags = lens _cisgTags (\s a -> s {_cisgTags = a}) . _Default . _Map

-- | List of IPv4 CIDR addresses to whitelist
cisgWhitelistRules :: Lens' CreateInputSecurityGroup [InputWhitelistRuleCidr]
cisgWhitelistRules = lens _cisgWhitelistRules (\s a -> s {_cisgWhitelistRules = a}) . _Default . _Coerce

instance AWSRequest CreateInputSecurityGroup where
  type
    Rs CreateInputSecurityGroup =
      CreateInputSecurityGroupResponse
  request = postJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          CreateInputSecurityGroupResponse'
            <$> (x .?> "securityGroup") <*> (pure (fromEnum s))
      )

instance Hashable CreateInputSecurityGroup

instance NFData CreateInputSecurityGroup

instance ToHeaders CreateInputSecurityGroup where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateInputSecurityGroup where
  toJSON CreateInputSecurityGroup' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _cisgTags,
            ("whitelistRules" .=) <$> _cisgWhitelistRules
          ]
      )

instance ToPath CreateInputSecurityGroup where
  toPath = const "/prod/inputSecurityGroups"

instance ToQuery CreateInputSecurityGroup where
  toQuery = const mempty

-- | Placeholder documentation for CreateInputSecurityGroupResponse
--
-- /See:/ 'createInputSecurityGroupResponse' smart constructor.
data CreateInputSecurityGroupResponse = CreateInputSecurityGroupResponse'
  { _cisgrrsSecurityGroup ::
      !( Maybe
           InputSecurityGroup
       ),
    _cisgrrsResponseStatus ::
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

-- | Creates a value of 'CreateInputSecurityGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cisgrrsSecurityGroup' - Undocumented member.
--
-- * 'cisgrrsResponseStatus' - -- | The response status code.
createInputSecurityGroupResponse ::
  -- | 'cisgrrsResponseStatus'
  Int ->
  CreateInputSecurityGroupResponse
createInputSecurityGroupResponse pResponseStatus_ =
  CreateInputSecurityGroupResponse'
    { _cisgrrsSecurityGroup =
        Nothing,
      _cisgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cisgrrsSecurityGroup :: Lens' CreateInputSecurityGroupResponse (Maybe InputSecurityGroup)
cisgrrsSecurityGroup = lens _cisgrrsSecurityGroup (\s a -> s {_cisgrrsSecurityGroup = a})

-- | -- | The response status code.
cisgrrsResponseStatus :: Lens' CreateInputSecurityGroupResponse Int
cisgrrsResponseStatus = lens _cisgrrsResponseStatus (\s a -> s {_cisgrrsResponseStatus = a})

instance NFData CreateInputSecurityGroupResponse
