{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ConditionCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ConditionCheck where

import Network.AWS.DynamoDB.Types.AttributeValue
import Network.AWS.DynamoDB.Types.ReturnValuesOnConditionCheckFailure
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a request to perform a check that an item exists or to check the condition of specific attributes of the item.
--
--
--
-- /See:/ 'conditionCheck' smart constructor.
data ConditionCheck = ConditionCheck'
  { _cExpressionAttributeValues ::
      !(Maybe (Map Text AttributeValue)),
    _cReturnValuesOnConditionCheckFailure ::
      !( Maybe
           ReturnValuesOnConditionCheckFailure
       ),
    _cExpressionAttributeNames ::
      !(Maybe (Map Text Text)),
    _cKey :: !(Map Text AttributeValue),
    _cTableName :: !Text,
    _cConditionExpression :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConditionCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cExpressionAttributeValues' - One or more values that can be substituted in an expression.
--
-- * 'cReturnValuesOnConditionCheckFailure' - Use @ReturnValuesOnConditionCheckFailure@ to get the item attributes if the @ConditionCheck@ condition fails. For @ReturnValuesOnConditionCheckFailure@ , the valid values are: NONE and ALL_OLD.
--
-- * 'cExpressionAttributeNames' - One or more substitution tokens for attribute names in an expression.
--
-- * 'cKey' - The primary key of the item to be checked. Each element consists of an attribute name and a value for that attribute.
--
-- * 'cTableName' - Name of the table for the check item request.
--
-- * 'cConditionExpression' - A condition that must be satisfied in order for a conditional update to succeed.
conditionCheck ::
  -- | 'cTableName'
  Text ->
  -- | 'cConditionExpression'
  Text ->
  ConditionCheck
conditionCheck pTableName_ pConditionExpression_ =
  ConditionCheck'
    { _cExpressionAttributeValues =
        Nothing,
      _cReturnValuesOnConditionCheckFailure = Nothing,
      _cExpressionAttributeNames = Nothing,
      _cKey = mempty,
      _cTableName = pTableName_,
      _cConditionExpression = pConditionExpression_
    }

-- | One or more values that can be substituted in an expression.
cExpressionAttributeValues :: Lens' ConditionCheck (HashMap Text AttributeValue)
cExpressionAttributeValues = lens _cExpressionAttributeValues (\s a -> s {_cExpressionAttributeValues = a}) . _Default . _Map

-- | Use @ReturnValuesOnConditionCheckFailure@ to get the item attributes if the @ConditionCheck@ condition fails. For @ReturnValuesOnConditionCheckFailure@ , the valid values are: NONE and ALL_OLD.
cReturnValuesOnConditionCheckFailure :: Lens' ConditionCheck (Maybe ReturnValuesOnConditionCheckFailure)
cReturnValuesOnConditionCheckFailure = lens _cReturnValuesOnConditionCheckFailure (\s a -> s {_cReturnValuesOnConditionCheckFailure = a})

-- | One or more substitution tokens for attribute names in an expression.
cExpressionAttributeNames :: Lens' ConditionCheck (HashMap Text Text)
cExpressionAttributeNames = lens _cExpressionAttributeNames (\s a -> s {_cExpressionAttributeNames = a}) . _Default . _Map

-- | The primary key of the item to be checked. Each element consists of an attribute name and a value for that attribute.
cKey :: Lens' ConditionCheck (HashMap Text AttributeValue)
cKey = lens _cKey (\s a -> s {_cKey = a}) . _Map

-- | Name of the table for the check item request.
cTableName :: Lens' ConditionCheck Text
cTableName = lens _cTableName (\s a -> s {_cTableName = a})

-- | A condition that must be satisfied in order for a conditional update to succeed.
cConditionExpression :: Lens' ConditionCheck Text
cConditionExpression = lens _cConditionExpression (\s a -> s {_cConditionExpression = a})

instance Hashable ConditionCheck

instance NFData ConditionCheck

instance ToJSON ConditionCheck where
  toJSON ConditionCheck' {..} =
    object
      ( catMaybes
          [ ("ExpressionAttributeValues" .=)
              <$> _cExpressionAttributeValues,
            ("ReturnValuesOnConditionCheckFailure" .=)
              <$> _cReturnValuesOnConditionCheckFailure,
            ("ExpressionAttributeNames" .=)
              <$> _cExpressionAttributeNames,
            Just ("Key" .= _cKey),
            Just ("TableName" .= _cTableName),
            Just
              ("ConditionExpression" .= _cConditionExpression)
          ]
      )
