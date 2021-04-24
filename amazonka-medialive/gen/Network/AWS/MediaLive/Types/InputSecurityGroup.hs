{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSecurityGroup where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputSecurityGroupState
import Network.AWS.MediaLive.Types.InputWhitelistRule
import Network.AWS.Prelude

-- | An Input Security Group
--
-- /See:/ 'inputSecurityGroup' smart constructor.
data InputSecurityGroup = InputSecurityGroup'
  { _isgARN ::
      !(Maybe Text),
    _isgId :: !(Maybe Text),
    _isgState ::
      !(Maybe InputSecurityGroupState),
    _isgTags ::
      !(Maybe (Map Text Text)),
    _isgWhitelistRules ::
      !(Maybe [InputWhitelistRule]),
    _isgInputs :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InputSecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isgARN' - Unique ARN of Input Security Group
--
-- * 'isgId' - The Id of the Input Security Group
--
-- * 'isgState' - The current state of the Input Security Group.
--
-- * 'isgTags' - A collection of key-value pairs.
--
-- * 'isgWhitelistRules' - Whitelist rules and their sync status
--
-- * 'isgInputs' - The list of inputs currently using this Input Security Group.
inputSecurityGroup ::
  InputSecurityGroup
inputSecurityGroup =
  InputSecurityGroup'
    { _isgARN = Nothing,
      _isgId = Nothing,
      _isgState = Nothing,
      _isgTags = Nothing,
      _isgWhitelistRules = Nothing,
      _isgInputs = Nothing
    }

-- | Unique ARN of Input Security Group
isgARN :: Lens' InputSecurityGroup (Maybe Text)
isgARN = lens _isgARN (\s a -> s {_isgARN = a})

-- | The Id of the Input Security Group
isgId :: Lens' InputSecurityGroup (Maybe Text)
isgId = lens _isgId (\s a -> s {_isgId = a})

-- | The current state of the Input Security Group.
isgState :: Lens' InputSecurityGroup (Maybe InputSecurityGroupState)
isgState = lens _isgState (\s a -> s {_isgState = a})

-- | A collection of key-value pairs.
isgTags :: Lens' InputSecurityGroup (HashMap Text Text)
isgTags = lens _isgTags (\s a -> s {_isgTags = a}) . _Default . _Map

-- | Whitelist rules and their sync status
isgWhitelistRules :: Lens' InputSecurityGroup [InputWhitelistRule]
isgWhitelistRules = lens _isgWhitelistRules (\s a -> s {_isgWhitelistRules = a}) . _Default . _Coerce

-- | The list of inputs currently using this Input Security Group.
isgInputs :: Lens' InputSecurityGroup [Text]
isgInputs = lens _isgInputs (\s a -> s {_isgInputs = a}) . _Default . _Coerce

instance FromJSON InputSecurityGroup where
  parseJSON =
    withObject
      "InputSecurityGroup"
      ( \x ->
          InputSecurityGroup'
            <$> (x .:? "arn")
            <*> (x .:? "id")
            <*> (x .:? "state")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "whitelistRules" .!= mempty)
            <*> (x .:? "inputs" .!= mempty)
      )

instance Hashable InputSecurityGroup

instance NFData InputSecurityGroup
