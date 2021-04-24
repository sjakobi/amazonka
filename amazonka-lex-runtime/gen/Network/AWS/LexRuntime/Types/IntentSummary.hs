{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.IntentSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.IntentSummary where

import Network.AWS.Lens
import Network.AWS.LexRuntime.Types.ConfirmationStatus
import Network.AWS.LexRuntime.Types.DialogActionType
import Network.AWS.LexRuntime.Types.FulfillmentState
import Network.AWS.Prelude

-- | Provides information about the state of an intent. You can use this information to get the current state of an intent so that you can process the intent, or so that you can return the intent to its previous state.
--
--
--
-- /See:/ 'intentSummary' smart constructor.
data IntentSummary = IntentSummary'
  { _isIntentName ::
      !(Maybe Text),
    _isFulfillmentState ::
      !(Maybe FulfillmentState),
    _isSlots ::
      !(Maybe (Sensitive (Map Text Text))),
    _isCheckpointLabel :: !(Maybe Text),
    _isSlotToElicit :: !(Maybe Text),
    _isConfirmationStatus ::
      !(Maybe ConfirmationStatus),
    _isDialogActionType :: !DialogActionType
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'IntentSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isIntentName' - The name of the intent.
--
-- * 'isFulfillmentState' - The fulfillment state of the intent. The possible values are:     * @Failed@ - The Lambda function associated with the intent failed to fulfill the intent.     * @Fulfilled@ - The intent has fulfilled by the Lambda function associated with the intent.      * @ReadyForFulfillment@ - All of the information necessary for the intent is present and the intent ready to be fulfilled by the client application.
--
-- * 'isSlots' - Map of the slots that have been gathered and their values.
--
-- * 'isCheckpointLabel' - A user-defined label that identifies a particular intent. You can use this label to return to a previous intent.  Use the @checkpointLabelFilter@ parameter of the @GetSessionRequest@ operation to filter the intents returned by the operation to those with only the specified label.
--
-- * 'isSlotToElicit' - The next slot to elicit from the user. If there is not slot to elicit, the field is blank.
--
-- * 'isConfirmationStatus' - The status of the intent after the user responds to the confirmation prompt. If the user confirms the intent, Amazon Lex sets this field to @Confirmed@ . If the user denies the intent, Amazon Lex sets this value to @Denied@ . The possible values are:     * @Confirmed@ - The user has responded "Yes" to the confirmation prompt, confirming that the intent is complete and that it is ready to be fulfilled.     * @Denied@ - The user has responded "No" to the confirmation prompt.     * @None@ - The user has never been prompted for confirmation; or, the user was prompted but did not confirm or deny the prompt.
--
-- * 'isDialogActionType' - The next action that the bot should take in its interaction with the user. The possible values are:     * @ConfirmIntent@ - The next action is asking the user if the intent is complete and ready to be fulfilled. This is a yes/no question such as "Place the order?"     * @Close@ - Indicates that the there will not be a response from the user. For example, the statement "Your order has been placed" does not require a response.     * @ElicitIntent@ - The next action is to determine the intent that the user wants to fulfill.     * @ElicitSlot@ - The next action is to elicit a slot value from the user.
intentSummary ::
  -- | 'isDialogActionType'
  DialogActionType ->
  IntentSummary
intentSummary pDialogActionType_ =
  IntentSummary'
    { _isIntentName = Nothing,
      _isFulfillmentState = Nothing,
      _isSlots = Nothing,
      _isCheckpointLabel = Nothing,
      _isSlotToElicit = Nothing,
      _isConfirmationStatus = Nothing,
      _isDialogActionType = pDialogActionType_
    }

-- | The name of the intent.
isIntentName :: Lens' IntentSummary (Maybe Text)
isIntentName = lens _isIntentName (\s a -> s {_isIntentName = a})

-- | The fulfillment state of the intent. The possible values are:     * @Failed@ - The Lambda function associated with the intent failed to fulfill the intent.     * @Fulfilled@ - The intent has fulfilled by the Lambda function associated with the intent.      * @ReadyForFulfillment@ - All of the information necessary for the intent is present and the intent ready to be fulfilled by the client application.
isFulfillmentState :: Lens' IntentSummary (Maybe FulfillmentState)
isFulfillmentState = lens _isFulfillmentState (\s a -> s {_isFulfillmentState = a})

-- | Map of the slots that have been gathered and their values.
isSlots :: Lens' IntentSummary (Maybe (HashMap Text Text))
isSlots = lens _isSlots (\s a -> s {_isSlots = a}) . mapping (_Sensitive . _Map)

-- | A user-defined label that identifies a particular intent. You can use this label to return to a previous intent.  Use the @checkpointLabelFilter@ parameter of the @GetSessionRequest@ operation to filter the intents returned by the operation to those with only the specified label.
isCheckpointLabel :: Lens' IntentSummary (Maybe Text)
isCheckpointLabel = lens _isCheckpointLabel (\s a -> s {_isCheckpointLabel = a})

-- | The next slot to elicit from the user. If there is not slot to elicit, the field is blank.
isSlotToElicit :: Lens' IntentSummary (Maybe Text)
isSlotToElicit = lens _isSlotToElicit (\s a -> s {_isSlotToElicit = a})

-- | The status of the intent after the user responds to the confirmation prompt. If the user confirms the intent, Amazon Lex sets this field to @Confirmed@ . If the user denies the intent, Amazon Lex sets this value to @Denied@ . The possible values are:     * @Confirmed@ - The user has responded "Yes" to the confirmation prompt, confirming that the intent is complete and that it is ready to be fulfilled.     * @Denied@ - The user has responded "No" to the confirmation prompt.     * @None@ - The user has never been prompted for confirmation; or, the user was prompted but did not confirm or deny the prompt.
isConfirmationStatus :: Lens' IntentSummary (Maybe ConfirmationStatus)
isConfirmationStatus = lens _isConfirmationStatus (\s a -> s {_isConfirmationStatus = a})

-- | The next action that the bot should take in its interaction with the user. The possible values are:     * @ConfirmIntent@ - The next action is asking the user if the intent is complete and ready to be fulfilled. This is a yes/no question such as "Place the order?"     * @Close@ - Indicates that the there will not be a response from the user. For example, the statement "Your order has been placed" does not require a response.     * @ElicitIntent@ - The next action is to determine the intent that the user wants to fulfill.     * @ElicitSlot@ - The next action is to elicit a slot value from the user.
isDialogActionType :: Lens' IntentSummary DialogActionType
isDialogActionType = lens _isDialogActionType (\s a -> s {_isDialogActionType = a})

instance FromJSON IntentSummary where
  parseJSON =
    withObject
      "IntentSummary"
      ( \x ->
          IntentSummary'
            <$> (x .:? "intentName")
            <*> (x .:? "fulfillmentState")
            <*> (x .:? "slots" .!= mempty)
            <*> (x .:? "checkpointLabel")
            <*> (x .:? "slotToElicit")
            <*> (x .:? "confirmationStatus")
            <*> (x .: "dialogActionType")
      )

instance Hashable IntentSummary

instance NFData IntentSummary

instance ToJSON IntentSummary where
  toJSON IntentSummary' {..} =
    object
      ( catMaybes
          [ ("intentName" .=) <$> _isIntentName,
            ("fulfillmentState" .=) <$> _isFulfillmentState,
            ("slots" .=) <$> _isSlots,
            ("checkpointLabel" .=) <$> _isCheckpointLabel,
            ("slotToElicit" .=) <$> _isSlotToElicit,
            ("confirmationStatus" .=) <$> _isConfirmationStatus,
            Just ("dialogActionType" .= _isDialogActionType)
          ]
      )
