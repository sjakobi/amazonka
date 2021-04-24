{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.Slot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.Slot where

import Network.AWS.Lens
import Network.AWS.LexModels.Types.ObfuscationSetting
import Network.AWS.LexModels.Types.Prompt
import Network.AWS.LexModels.Types.SlotConstraint
import Network.AWS.LexModels.Types.SlotDefaultValueSpec
import Network.AWS.Prelude

-- | Identifies the version of a specific slot.
--
--
--
-- /See:/ 'slot' smart constructor.
data Slot = Slot'
  { _sloResponseCard :: !(Maybe Text),
    _sloValueElicitationPrompt :: !(Maybe Prompt),
    _sloSlotType :: !(Maybe Text),
    _sloSlotTypeVersion :: !(Maybe Text),
    _sloPriority :: !(Maybe Nat),
    _sloSampleUtterances :: !(Maybe [Text]),
    _sloDescription :: !(Maybe Text),
    _sloDefaultValueSpec ::
      !(Maybe SlotDefaultValueSpec),
    _sloObfuscationSetting ::
      !(Maybe ObfuscationSetting),
    _sloName :: !Text,
    _sloSlotConstraint :: !SlotConstraint
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Slot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sloResponseCard' - A set of possible responses for the slot type used by text-based clients. A user chooses an option from the response card, instead of using text to reply.
--
-- * 'sloValueElicitationPrompt' - The prompt that Amazon Lex uses to elicit the slot value from the user.
--
-- * 'sloSlotType' - The type of the slot, either a custom slot type that you defined or one of the built-in slot types.
--
-- * 'sloSlotTypeVersion' - The version of the slot type.
--
-- * 'sloPriority' - Directs Amazon Lex the order in which to elicit this slot value from the user. For example, if the intent has two slots with priorities 1 and 2, AWS Amazon Lex first elicits a value for the slot with priority 1. If multiple slots share the same priority, the order in which Amazon Lex elicits values is arbitrary.
--
-- * 'sloSampleUtterances' - If you know a specific pattern with which users might respond to an Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This is optional. In most cases, Amazon Lex is capable of understanding user utterances.
--
-- * 'sloDescription' - A description of the slot.
--
-- * 'sloDefaultValueSpec' - A list of default values for the slot. Default values are used when Amazon Lex hasn't determined a value for a slot. You can specify default values from context variables, session attributes, and defined values.
--
-- * 'sloObfuscationSetting' - Determines whether a slot is obfuscated in conversation logs and stored utterances. When you obfuscate a slot, the value is replaced by the slot name in curly braces ({}). For example, if the slot name is "full_name", obfuscated values are replaced with "{full_name}". For more information, see <https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html Slot Obfuscation > .
--
-- * 'sloName' - The name of the slot.
--
-- * 'sloSlotConstraint' - Specifies whether the slot is required or optional.
slot ::
  -- | 'sloName'
  Text ->
  -- | 'sloSlotConstraint'
  SlotConstraint ->
  Slot
slot pName_ pSlotConstraint_ =
  Slot'
    { _sloResponseCard = Nothing,
      _sloValueElicitationPrompt = Nothing,
      _sloSlotType = Nothing,
      _sloSlotTypeVersion = Nothing,
      _sloPriority = Nothing,
      _sloSampleUtterances = Nothing,
      _sloDescription = Nothing,
      _sloDefaultValueSpec = Nothing,
      _sloObfuscationSetting = Nothing,
      _sloName = pName_,
      _sloSlotConstraint = pSlotConstraint_
    }

-- | A set of possible responses for the slot type used by text-based clients. A user chooses an option from the response card, instead of using text to reply.
sloResponseCard :: Lens' Slot (Maybe Text)
sloResponseCard = lens _sloResponseCard (\s a -> s {_sloResponseCard = a})

-- | The prompt that Amazon Lex uses to elicit the slot value from the user.
sloValueElicitationPrompt :: Lens' Slot (Maybe Prompt)
sloValueElicitationPrompt = lens _sloValueElicitationPrompt (\s a -> s {_sloValueElicitationPrompt = a})

-- | The type of the slot, either a custom slot type that you defined or one of the built-in slot types.
sloSlotType :: Lens' Slot (Maybe Text)
sloSlotType = lens _sloSlotType (\s a -> s {_sloSlotType = a})

-- | The version of the slot type.
sloSlotTypeVersion :: Lens' Slot (Maybe Text)
sloSlotTypeVersion = lens _sloSlotTypeVersion (\s a -> s {_sloSlotTypeVersion = a})

-- | Directs Amazon Lex the order in which to elicit this slot value from the user. For example, if the intent has two slots with priorities 1 and 2, AWS Amazon Lex first elicits a value for the slot with priority 1. If multiple slots share the same priority, the order in which Amazon Lex elicits values is arbitrary.
sloPriority :: Lens' Slot (Maybe Natural)
sloPriority = lens _sloPriority (\s a -> s {_sloPriority = a}) . mapping _Nat

-- | If you know a specific pattern with which users might respond to an Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This is optional. In most cases, Amazon Lex is capable of understanding user utterances.
sloSampleUtterances :: Lens' Slot [Text]
sloSampleUtterances = lens _sloSampleUtterances (\s a -> s {_sloSampleUtterances = a}) . _Default . _Coerce

-- | A description of the slot.
sloDescription :: Lens' Slot (Maybe Text)
sloDescription = lens _sloDescription (\s a -> s {_sloDescription = a})

-- | A list of default values for the slot. Default values are used when Amazon Lex hasn't determined a value for a slot. You can specify default values from context variables, session attributes, and defined values.
sloDefaultValueSpec :: Lens' Slot (Maybe SlotDefaultValueSpec)
sloDefaultValueSpec = lens _sloDefaultValueSpec (\s a -> s {_sloDefaultValueSpec = a})

-- | Determines whether a slot is obfuscated in conversation logs and stored utterances. When you obfuscate a slot, the value is replaced by the slot name in curly braces ({}). For example, if the slot name is "full_name", obfuscated values are replaced with "{full_name}". For more information, see <https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html Slot Obfuscation > .
sloObfuscationSetting :: Lens' Slot (Maybe ObfuscationSetting)
sloObfuscationSetting = lens _sloObfuscationSetting (\s a -> s {_sloObfuscationSetting = a})

-- | The name of the slot.
sloName :: Lens' Slot Text
sloName = lens _sloName (\s a -> s {_sloName = a})

-- | Specifies whether the slot is required or optional.
sloSlotConstraint :: Lens' Slot SlotConstraint
sloSlotConstraint = lens _sloSlotConstraint (\s a -> s {_sloSlotConstraint = a})

instance FromJSON Slot where
  parseJSON =
    withObject
      "Slot"
      ( \x ->
          Slot'
            <$> (x .:? "responseCard")
            <*> (x .:? "valueElicitationPrompt")
            <*> (x .:? "slotType")
            <*> (x .:? "slotTypeVersion")
            <*> (x .:? "priority")
            <*> (x .:? "sampleUtterances" .!= mempty)
            <*> (x .:? "description")
            <*> (x .:? "defaultValueSpec")
            <*> (x .:? "obfuscationSetting")
            <*> (x .: "name")
            <*> (x .: "slotConstraint")
      )

instance Hashable Slot

instance NFData Slot

instance ToJSON Slot where
  toJSON Slot' {..} =
    object
      ( catMaybes
          [ ("responseCard" .=) <$> _sloResponseCard,
            ("valueElicitationPrompt" .=)
              <$> _sloValueElicitationPrompt,
            ("slotType" .=) <$> _sloSlotType,
            ("slotTypeVersion" .=) <$> _sloSlotTypeVersion,
            ("priority" .=) <$> _sloPriority,
            ("sampleUtterances" .=) <$> _sloSampleUtterances,
            ("description" .=) <$> _sloDescription,
            ("defaultValueSpec" .=) <$> _sloDefaultValueSpec,
            ("obfuscationSetting" .=) <$> _sloObfuscationSetting,
            Just ("name" .= _sloName),
            Just ("slotConstraint" .= _sloSlotConstraint)
          ]
      )
