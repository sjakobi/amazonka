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
-- Module      : Network.AWS.DynamoDB.PutItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new item, or replaces an old item with a new item. If an item that has the same primary key as the new item already exists in the specified table, the new item completely replaces the existing item. You can perform a conditional put operation (add a new item if one with the specified primary key doesn't exist), or replace an existing item if it has certain attribute values. You can return the item's attribute values in the same operation, using the @ReturnValues@ parameter.
--
--
-- /Important:/ This topic provides general information about the @PutItem@ API.
--
-- For information on how to call the @PutItem@ API using the AWS SDK in specific languages, see the following:
--
--     * <http://docs.aws.amazon.com/goto/aws-cli/dynamodb-2012-08-10/PutItem PutItem in the AWS Command Line Interface>
--
--     * <http://docs.aws.amazon.com/goto/DotNetSDKV3/dynamodb-2012-08-10/PutItem PutItem in the AWS SDK for .NET>
--
--     * <http://docs.aws.amazon.com/goto/SdkForCpp/dynamodb-2012-08-10/PutItem PutItem in the AWS SDK for C++>
--
--     * <http://docs.aws.amazon.com/goto/SdkForGoV1/dynamodb-2012-08-10/PutItem PutItem in the AWS SDK for Go>
--
--     * <http://docs.aws.amazon.com/goto/SdkForJava/dynamodb-2012-08-10/PutItem PutItem in the AWS SDK for Java>
--
--     * <http://docs.aws.amazon.com/goto/AWSJavaScriptSDK/dynamodb-2012-08-10/PutItem PutItem in the AWS SDK for JavaScript>
--
--     * <http://docs.aws.amazon.com/goto/SdkForPHPV3/dynamodb-2012-08-10/PutItem PutItem in the AWS SDK for PHP V3>
--
--     * <http://docs.aws.amazon.com/goto/boto3/dynamodb-2012-08-10/PutItem PutItem in the AWS SDK for Python>
--
--     * <http://docs.aws.amazon.com/goto/SdkForRubyV2/dynamodb-2012-08-10/PutItem PutItem in the AWS SDK for Ruby V2>
--
--
--
-- When you add an item, the primary key attributes are the only required attributes. Attribute values cannot be null.
--
-- Empty String and Binary attribute values are allowed. Attribute values of type String and Binary must have a length greater than zero if the attribute is used as a key attribute for a table or index. Set type attributes cannot be empty.
--
-- Invalid Requests with empty values will be rejected with a @ValidationException@ exception.
--
-- For more information about @PutItem@ , see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html Working with Items> in the /Amazon DynamoDB Developer Guide/ .
module Network.AWS.DynamoDB.PutItem
  ( -- * Creating a Request
    putItem,
    PutItem,

    -- * Request Lenses
    piExpected,
    piExpressionAttributeValues,
    piReturnItemCollectionMetrics,
    piExpressionAttributeNames,
    piReturnValues,
    piConditionExpression,
    piReturnConsumedCapacity,
    piConditionalOperator,
    piTableName,
    piItem,

    -- * Destructuring the Response
    putItemResponse,
    PutItemResponse,

    -- * Response Lenses
    pirrsItemCollectionMetrics,
    pirrsAttributes,
    pirrsConsumedCapacity,
    pirrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @PutItem@ operation.
--
--
--
-- /See:/ 'putItem' smart constructor.
data PutItem = PutItem'
  { _piExpected ::
      !(Maybe (Map Text ExpectedAttributeValue)),
    _piExpressionAttributeValues ::
      !(Maybe (Map Text AttributeValue)),
    _piReturnItemCollectionMetrics ::
      !(Maybe ReturnItemCollectionMetrics),
    _piExpressionAttributeNames ::
      !(Maybe (Map Text Text)),
    _piReturnValues :: !(Maybe ReturnValue),
    _piConditionExpression :: !(Maybe Text),
    _piReturnConsumedCapacity ::
      !(Maybe ReturnConsumedCapacity),
    _piConditionalOperator ::
      !(Maybe ConditionalOperator),
    _piTableName :: !Text,
    _piItem :: !(Map Text AttributeValue)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piExpected' - This is a legacy parameter. Use @ConditionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html Expected> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'piExpressionAttributeValues' - One or more values that can be substituted in an expression. Use the __:__ (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the /ProductStatus/ attribute was one of the following:  @Available | Backordered | Discontinued@  You would first need to specify @ExpressionAttributeValues@ as follows: @{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }@  You could then use these values in an expression, such as this: @ProductStatus IN (:avail, :back, :disc)@  For more information on expression attribute values, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html Condition Expressions> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'piReturnItemCollectionMetrics' - Determines whether item collection metrics are returned. If set to @SIZE@ , the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to @NONE@ (the default), no statistics are returned.
--
-- * 'piExpressionAttributeNames' - One or more substitution tokens for attribute names in an expression. The following are some use cases for using @ExpressionAttributeNames@ :     * To access an attribute whose name conflicts with a DynamoDB reserved word.     * To create a placeholder for repeating occurrences of an attribute name in an expression.     * To prevent special characters in an attribute name from being misinterpreted in an expression. Use the __#__ character in an expression to dereference an attribute name. For example, consider the following attribute name:     * @Percentile@  The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html Reserved Words> in the /Amazon DynamoDB Developer Guide/ ). To work around this, you could specify the following for @ExpressionAttributeNames@ :     * @{"#P":"Percentile"}@  You could then use this substitution in an expression, as in this example:     * @#P = :val@  For more information on expression attribute names, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Specifying Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'piReturnValues' - Use @ReturnValues@ if you want to get the item attributes as they appeared before they were updated with the @PutItem@ request. For @PutItem@ , the valid values are:     * @NONE@ - If @ReturnValues@ is not specified, or if its value is @NONE@ , then nothing is returned. (This setting is the default for @ReturnValues@ .)     * @ALL_OLD@ - If @PutItem@ overwrote an attribute name-value pair, then the content of the old item is returned.
--
-- * 'piConditionExpression' - A condition that must be satisfied in order for a conditional @PutItem@ operation to succeed. An expression can contain any of the following:     * Functions: @attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size@  These function names are case-sensitive.     * Comparison operators: @= | <> | < | > | <= | >= | BETWEEN | IN @      * Logical operators: @AND | OR | NOT@  For more information on condition expressions, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html Condition Expressions> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'piReturnConsumedCapacity' - Undocumented member.
--
-- * 'piConditionalOperator' - This is a legacy parameter. Use @ConditionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html ConditionalOperator> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'piTableName' - The name of the table to contain the item.
--
-- * 'piItem' - A map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item. You must provide all of the attributes for the primary key. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide both values for both the partition key and the sort key. If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition. Empty String and Binary attribute values are allowed. Attribute values of type String and Binary must have a length greater than zero if the attribute is used as a key attribute for a table or index. For more information about primary keys, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey Primary Key> in the /Amazon DynamoDB Developer Guide/ . Each element in the @Item@ map is an @AttributeValue@ object.
putItem ::
  -- | 'piTableName'
  Text ->
  PutItem
putItem pTableName_ =
  PutItem'
    { _piExpected = Nothing,
      _piExpressionAttributeValues = Nothing,
      _piReturnItemCollectionMetrics = Nothing,
      _piExpressionAttributeNames = Nothing,
      _piReturnValues = Nothing,
      _piConditionExpression = Nothing,
      _piReturnConsumedCapacity = Nothing,
      _piConditionalOperator = Nothing,
      _piTableName = pTableName_,
      _piItem = mempty
    }

-- | This is a legacy parameter. Use @ConditionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html Expected> in the /Amazon DynamoDB Developer Guide/ .
piExpected :: Lens' PutItem (HashMap Text ExpectedAttributeValue)
piExpected = lens _piExpected (\s a -> s {_piExpected = a}) . _Default . _Map

-- | One or more values that can be substituted in an expression. Use the __:__ (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the /ProductStatus/ attribute was one of the following:  @Available | Backordered | Discontinued@  You would first need to specify @ExpressionAttributeValues@ as follows: @{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }@  You could then use these values in an expression, such as this: @ProductStatus IN (:avail, :back, :disc)@  For more information on expression attribute values, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html Condition Expressions> in the /Amazon DynamoDB Developer Guide/ .
piExpressionAttributeValues :: Lens' PutItem (HashMap Text AttributeValue)
piExpressionAttributeValues = lens _piExpressionAttributeValues (\s a -> s {_piExpressionAttributeValues = a}) . _Default . _Map

-- | Determines whether item collection metrics are returned. If set to @SIZE@ , the response includes statistics about item collections, if any, that were modified during the operation are returned in the response. If set to @NONE@ (the default), no statistics are returned.
piReturnItemCollectionMetrics :: Lens' PutItem (Maybe ReturnItemCollectionMetrics)
piReturnItemCollectionMetrics = lens _piReturnItemCollectionMetrics (\s a -> s {_piReturnItemCollectionMetrics = a})

-- | One or more substitution tokens for attribute names in an expression. The following are some use cases for using @ExpressionAttributeNames@ :     * To access an attribute whose name conflicts with a DynamoDB reserved word.     * To create a placeholder for repeating occurrences of an attribute name in an expression.     * To prevent special characters in an attribute name from being misinterpreted in an expression. Use the __#__ character in an expression to dereference an attribute name. For example, consider the following attribute name:     * @Percentile@  The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html Reserved Words> in the /Amazon DynamoDB Developer Guide/ ). To work around this, you could specify the following for @ExpressionAttributeNames@ :     * @{"#P":"Percentile"}@  You could then use this substitution in an expression, as in this example:     * @#P = :val@  For more information on expression attribute names, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Specifying Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
piExpressionAttributeNames :: Lens' PutItem (HashMap Text Text)
piExpressionAttributeNames = lens _piExpressionAttributeNames (\s a -> s {_piExpressionAttributeNames = a}) . _Default . _Map

-- | Use @ReturnValues@ if you want to get the item attributes as they appeared before they were updated with the @PutItem@ request. For @PutItem@ , the valid values are:     * @NONE@ - If @ReturnValues@ is not specified, or if its value is @NONE@ , then nothing is returned. (This setting is the default for @ReturnValues@ .)     * @ALL_OLD@ - If @PutItem@ overwrote an attribute name-value pair, then the content of the old item is returned.
piReturnValues :: Lens' PutItem (Maybe ReturnValue)
piReturnValues = lens _piReturnValues (\s a -> s {_piReturnValues = a})

-- | A condition that must be satisfied in order for a conditional @PutItem@ operation to succeed. An expression can contain any of the following:     * Functions: @attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size@  These function names are case-sensitive.     * Comparison operators: @= | <> | < | > | <= | >= | BETWEEN | IN @      * Logical operators: @AND | OR | NOT@  For more information on condition expressions, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html Condition Expressions> in the /Amazon DynamoDB Developer Guide/ .
piConditionExpression :: Lens' PutItem (Maybe Text)
piConditionExpression = lens _piConditionExpression (\s a -> s {_piConditionExpression = a})

-- | Undocumented member.
piReturnConsumedCapacity :: Lens' PutItem (Maybe ReturnConsumedCapacity)
piReturnConsumedCapacity = lens _piReturnConsumedCapacity (\s a -> s {_piReturnConsumedCapacity = a})

-- | This is a legacy parameter. Use @ConditionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html ConditionalOperator> in the /Amazon DynamoDB Developer Guide/ .
piConditionalOperator :: Lens' PutItem (Maybe ConditionalOperator)
piConditionalOperator = lens _piConditionalOperator (\s a -> s {_piConditionalOperator = a})

-- | The name of the table to contain the item.
piTableName :: Lens' PutItem Text
piTableName = lens _piTableName (\s a -> s {_piTableName = a})

-- | A map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can optionally provide other attribute name-value pairs for the item. You must provide all of the attributes for the primary key. For example, with a simple primary key, you only need to provide a value for the partition key. For a composite primary key, you must provide both values for both the partition key and the sort key. If you specify any attributes that are part of an index key, then the data types for those attributes must match those of the schema in the table's attribute definition. Empty String and Binary attribute values are allowed. Attribute values of type String and Binary must have a length greater than zero if the attribute is used as a key attribute for a table or index. For more information about primary keys, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey Primary Key> in the /Amazon DynamoDB Developer Guide/ . Each element in the @Item@ map is an @AttributeValue@ object.
piItem :: Lens' PutItem (HashMap Text AttributeValue)
piItem = lens _piItem (\s a -> s {_piItem = a}) . _Map

instance AWSRequest PutItem where
  type Rs PutItem = PutItemResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          PutItemResponse'
            <$> (x .?> "ItemCollectionMetrics")
            <*> (x .?> "Attributes" .!@ mempty)
            <*> (x .?> "ConsumedCapacity")
            <*> (pure (fromEnum s))
      )

instance Hashable PutItem

instance NFData PutItem

instance ToHeaders PutItem where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DynamoDB_20120810.PutItem" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON PutItem where
  toJSON PutItem' {..} =
    object
      ( catMaybes
          [ ("Expected" .=) <$> _piExpected,
            ("ExpressionAttributeValues" .=)
              <$> _piExpressionAttributeValues,
            ("ReturnItemCollectionMetrics" .=)
              <$> _piReturnItemCollectionMetrics,
            ("ExpressionAttributeNames" .=)
              <$> _piExpressionAttributeNames,
            ("ReturnValues" .=) <$> _piReturnValues,
            ("ConditionExpression" .=)
              <$> _piConditionExpression,
            ("ReturnConsumedCapacity" .=)
              <$> _piReturnConsumedCapacity,
            ("ConditionalOperator" .=)
              <$> _piConditionalOperator,
            Just ("TableName" .= _piTableName),
            Just ("Item" .= _piItem)
          ]
      )

instance ToPath PutItem where
  toPath = const "/"

instance ToQuery PutItem where
  toQuery = const mempty

-- | Represents the output of a @PutItem@ operation.
--
--
--
-- /See:/ 'putItemResponse' smart constructor.
data PutItemResponse = PutItemResponse'
  { _pirrsItemCollectionMetrics ::
      !(Maybe ItemCollectionMetrics),
    _pirrsAttributes ::
      !(Maybe (Map Text AttributeValue)),
    _pirrsConsumedCapacity ::
      !(Maybe ConsumedCapacity),
    _pirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirrsItemCollectionMetrics' - Information about item collections, if any, that were affected by the @PutItem@ operation. @ItemCollectionMetrics@ is only returned if the @ReturnItemCollectionMetrics@ parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response. Each @ItemCollectionMetrics@ element consists of:     * @ItemCollectionKey@ - The partition key value of the item collection. This is the same as the partition key value of the item itself.     * @SizeEstimateRangeGB@ - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit. The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.
--
-- * 'pirrsAttributes' - The attribute values as they appeared before the @PutItem@ operation, but only if @ReturnValues@ is specified as @ALL_OLD@ in the request. Each element consists of an attribute name and an attribute value.
--
-- * 'pirrsConsumedCapacity' - The capacity units consumed by the @PutItem@ operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. @ConsumedCapacity@ is only returned if the @ReturnConsumedCapacity@ parameter was specified. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html Read/Write Capacity Mode> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'pirrsResponseStatus' - -- | The response status code.
putItemResponse ::
  -- | 'pirrsResponseStatus'
  Int ->
  PutItemResponse
putItemResponse pResponseStatus_ =
  PutItemResponse'
    { _pirrsItemCollectionMetrics =
        Nothing,
      _pirrsAttributes = Nothing,
      _pirrsConsumedCapacity = Nothing,
      _pirrsResponseStatus = pResponseStatus_
    }

-- | Information about item collections, if any, that were affected by the @PutItem@ operation. @ItemCollectionMetrics@ is only returned if the @ReturnItemCollectionMetrics@ parameter was specified. If the table does not have any local secondary indexes, this information is not returned in the response. Each @ItemCollectionMetrics@ element consists of:     * @ItemCollectionKey@ - The partition key value of the item collection. This is the same as the partition key value of the item itself.     * @SizeEstimateRangeGB@ - An estimate of item collection size, in gigabytes. This value is a two-element array containing a lower bound and an upper bound for the estimate. The estimate includes the size of all the items in the table, plus the size of all attributes projected into all of the local secondary indexes on that table. Use this estimate to measure whether a local secondary index is approaching its size limit. The estimate is subject to change over time; therefore, do not rely on the precision or accuracy of the estimate.
pirrsItemCollectionMetrics :: Lens' PutItemResponse (Maybe ItemCollectionMetrics)
pirrsItemCollectionMetrics = lens _pirrsItemCollectionMetrics (\s a -> s {_pirrsItemCollectionMetrics = a})

-- | The attribute values as they appeared before the @PutItem@ operation, but only if @ReturnValues@ is specified as @ALL_OLD@ in the request. Each element consists of an attribute name and an attribute value.
pirrsAttributes :: Lens' PutItemResponse (HashMap Text AttributeValue)
pirrsAttributes = lens _pirrsAttributes (\s a -> s {_pirrsAttributes = a}) . _Default . _Map

-- | The capacity units consumed by the @PutItem@ operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. @ConsumedCapacity@ is only returned if the @ReturnConsumedCapacity@ parameter was specified. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html Read/Write Capacity Mode> in the /Amazon DynamoDB Developer Guide/ .
pirrsConsumedCapacity :: Lens' PutItemResponse (Maybe ConsumedCapacity)
pirrsConsumedCapacity = lens _pirrsConsumedCapacity (\s a -> s {_pirrsConsumedCapacity = a})

-- | -- | The response status code.
pirrsResponseStatus :: Lens' PutItemResponse Int
pirrsResponseStatus = lens _pirrsResponseStatus (\s a -> s {_pirrsResponseStatus = a})

instance NFData PutItemResponse
