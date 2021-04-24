{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.DialogAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.DialogAction where

import Network.AWS.Lens
import Network.AWS.LexRuntime.Types.DialogActionType
import Network.AWS.LexRuntime.Types.FulfillmentState
import Network.AWS.LexRuntime.Types.MessageFormatType
import Network.AWS.Prelude

-- | Describes the next action that the bot should take in its interaction with the user and provides information about the context in which the action takes place. Use the @DialogAction@ data type to set the interaction to a specific state, or to return the interaction to a previous state.
--
--
--
-- /See:/ 'dialogAction' smart constructor.
data DialogAction = DialogAction'
  { _daMessage ::
      !(Maybe (Sensitive Text)),
    _daIntentName :: !(Maybe Text),
    _daMessageFormat ::
      !(Maybe MessageFormatType),
    _daFulfillmentState ::
      !(Maybe FulfillmentState),
    _daSlots ::
      !(Maybe (Sensitive (Map Text Text))),
    _daSlotToElicit :: !(Maybe Text),
    _daType :: !DialogActionType
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DialogAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daMessage' - The message that should be shown to the user. If you don't specify a message, Amazon Lex will use the message configured for the intent.
--
-- * 'daIntentName' - The name of the intent.
--
-- * 'daMessageFormat' -     * @PlainText@ - The message contains plain UTF-8 text.     * @CustomPayload@ - The message is a custom format for the client.     * @SSML@ - The message contains text formatted for voice output.     * @Composite@ - The message contains an escaped JSON object containing one or more messages. For more information, see <https://docs.aws.amazon.com/lex/latest/dg/howitworks-manage-prompts.html Message Groups> .
--
-- * 'daFulfillmentState' - The fulfillment state of the intent. The possible values are:     * @Failed@ - The Lambda function associated with the intent failed to fulfill the intent.     * @Fulfilled@ - The intent has fulfilled by the Lambda function associated with the intent.      * @ReadyForFulfillment@ - All of the information necessary for the intent is present and the intent ready to be fulfilled by the client application.
--
-- * 'daSlots' - Map of the slots that have been gathered and their values.
--
-- * 'daSlotToElicit' - The name of the slot that should be elicited from the user.
--
-- * 'daType' - The next action that the bot should take in its interaction with the user. The possible values are:     * @ConfirmIntent@ - The next action is asking the user if the intent is complete and ready to be fulfilled. This is a yes/no question such as "Place the order?"     * @Close@ - Indicates that the there will not be a response from the user. For example, the statement "Your order has been placed" does not require a response.     * @Delegate@ - The next action is determined by Amazon Lex.     * @ElicitIntent@ - The next action is to determine the intent that the user wants to fulfill.     * @ElicitSlot@ - The next action is to elicit a slot value from the user.
dialogAction ::
  -- | 'daType'
  DialogActionType ->
  DialogAction
dialogAction pType_ =
  DialogAction'
    { _daMessage = Nothing,
      _daIntentName = Nothing,
      _daMessageFormat = Nothing,
      _daFulfillmentState = Nothing,
      _daSlots = Nothing,
      _daSlotToElicit = Nothing,
      _daType = pType_
    }

-- | The message that should be shown to the user. If you don't specify a message, Amazon Lex will use the message configured for the intent.
daMessage :: Lens' DialogAction (Maybe Text)
daMessage = lens _daMessage (\s a -> s {_daMessage = a}) . mapping _Sensitive

-- | The name of the intent.
daIntentName :: Lens' DialogAction (Maybe Text)
daIntentName = lens _daIntentName (\s a -> s {_daIntentName = a})

-- |     * @PlainText@ - The message contains plain UTF-8 text.     * @CustomPayload@ - The message is a custom format for the client.     * @SSML@ - The message contains text formatted for voice output.     * @Composite@ - The message contains an escaped JSON object containing one or more messages. For more information, see <https://docs.aws.amazon.com/lex/latest/dg/howitworks-manage-prompts.html Message Groups> .
daMessageFormat :: Lens' DialogAction (Maybe MessageFormatType)
daMessageFormat = lens _daMessageFormat (\s a -> s {_daMessageFormat = a})

-- | The fulfillment state of the intent. The possible values are:     * @Failed@ - The Lambda function associated with the intent failed to fulfill the intent.     * @Fulfilled@ - The intent has fulfilled by the Lambda function associated with the intent.      * @ReadyForFulfillment@ - All of the information necessary for the intent is present and the intent ready to be fulfilled by the client application.
daFulfillmentState :: Lens' DialogAction (Maybe FulfillmentState)
daFulfillmentState = lens _daFulfillmentState (\s a -> s {_daFulfillmentState = a})

-- | Map of the slots that have been gathered and their values.
daSlots :: Lens' DialogAction (Maybe (HashMap Text Text))
daSlots = lens _daSlots (\s a -> s {_daSlots = a}) . mapping (_Sensitive . _Map)

-- | The name of the slot that should be elicited from the user.
daSlotToElicit :: Lens' DialogAction (Maybe Text)
daSlotToElicit = lens _daSlotToElicit (\s a -> s {_daSlotToElicit = a})

-- | The next action that the bot should take in its interaction with the user. The possible values are:     * @ConfirmIntent@ - The next action is asking the user if the intent is complete and ready to be fulfilled. This is a yes/no question such as "Place the order?"     * @Close@ - Indicates that the there will not be a response from the user. For example, the statement "Your order has been placed" does not require a response.     * @Delegate@ - The next action is determined by Amazon Lex.     * @ElicitIntent@ - The next action is to determine the intent that the user wants to fulfill.     * @ElicitSlot@ - The next action is to elicit a slot value from the user.
daType :: Lens' DialogAction DialogActionType
daType = lens _daType (\s a -> s {_daType = a})

instance FromJSON DialogAction where
  parseJSON =
    withObject
      "DialogAction"
      ( \x ->
          DialogAction'
            <$> (x .:? "message")
            <*> (x .:? "intentName")
            <*> (x .:? "messageFormat")
            <*> (x .:? "fulfillmentState")
            <*> (x .:? "slots" .!= mempty)
            <*> (x .:? "slotToElicit")
            <*> (x .: "type")
      )

instance Hashable DialogAction

instance NFData DialogAction

instance ToJSON DialogAction where
  toJSON DialogAction' {..} =
    object
      ( catMaybes
          [ ("message" .=) <$> _daMessage,
            ("intentName" .=) <$> _daIntentName,
            ("messageFormat" .=) <$> _daMessageFormat,
            ("fulfillmentState" .=) <$> _daFulfillmentState,
            ("slots" .=) <$> _daSlots,
            ("slotToElicit" .=) <$> _daSlotToElicit,
            Just ("type" .= _daType)
          ]
      )
