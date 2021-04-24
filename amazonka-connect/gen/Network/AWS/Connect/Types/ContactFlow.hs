{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.ContactFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.ContactFlow where

import Network.AWS.Connect.Types.ContactFlowType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a contact flow.
--
--
--
-- /See:/ 'contactFlow' smart constructor.
data ContactFlow = ContactFlow'
  { _cfARN ::
      !(Maybe Text),
    _cfId :: !(Maybe Text),
    _cfName :: !(Maybe Text),
    _cfContent :: !(Maybe Text),
    _cfTags :: !(Maybe (Map Text Text)),
    _cfDescription :: !(Maybe Text),
    _cfType :: !(Maybe ContactFlowType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContactFlow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfARN' - The Amazon Resource Name (ARN) of the contact flow.
--
-- * 'cfId' - The identifier of the contact flow.
--
-- * 'cfName' - The name of the contact flow.
--
-- * 'cfContent' - The content of the contact flow.
--
-- * 'cfTags' - One or more tags.
--
-- * 'cfDescription' - The description of the contact flow.
--
-- * 'cfType' - The type of the contact flow. For descriptions of the available types, see <https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types Choose a Contact Flow Type> in the /Amazon Connect Administrator Guide/ .
contactFlow ::
  ContactFlow
contactFlow =
  ContactFlow'
    { _cfARN = Nothing,
      _cfId = Nothing,
      _cfName = Nothing,
      _cfContent = Nothing,
      _cfTags = Nothing,
      _cfDescription = Nothing,
      _cfType = Nothing
    }

-- | The Amazon Resource Name (ARN) of the contact flow.
cfARN :: Lens' ContactFlow (Maybe Text)
cfARN = lens _cfARN (\s a -> s {_cfARN = a})

-- | The identifier of the contact flow.
cfId :: Lens' ContactFlow (Maybe Text)
cfId = lens _cfId (\s a -> s {_cfId = a})

-- | The name of the contact flow.
cfName :: Lens' ContactFlow (Maybe Text)
cfName = lens _cfName (\s a -> s {_cfName = a})

-- | The content of the contact flow.
cfContent :: Lens' ContactFlow (Maybe Text)
cfContent = lens _cfContent (\s a -> s {_cfContent = a})

-- | One or more tags.
cfTags :: Lens' ContactFlow (HashMap Text Text)
cfTags = lens _cfTags (\s a -> s {_cfTags = a}) . _Default . _Map

-- | The description of the contact flow.
cfDescription :: Lens' ContactFlow (Maybe Text)
cfDescription = lens _cfDescription (\s a -> s {_cfDescription = a})

-- | The type of the contact flow. For descriptions of the available types, see <https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types Choose a Contact Flow Type> in the /Amazon Connect Administrator Guide/ .
cfType :: Lens' ContactFlow (Maybe ContactFlowType)
cfType = lens _cfType (\s a -> s {_cfType = a})

instance FromJSON ContactFlow where
  parseJSON =
    withObject
      "ContactFlow"
      ( \x ->
          ContactFlow'
            <$> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
            <*> (x .:? "Content")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "Type")
      )

instance Hashable ContactFlow

instance NFData ContactFlow
