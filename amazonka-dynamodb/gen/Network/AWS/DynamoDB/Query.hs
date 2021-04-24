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
-- Module      : Network.AWS.DynamoDB.Query
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @Query@ operation finds items based on primary key values. You can query any table or secondary index that has a composite primary key (a partition key and a sort key).
--
--
-- Use the @KeyConditionExpression@ parameter to provide a specific value for the partition key. The @Query@ operation will return all of the items from the table or index with that partition key value. You can optionally narrow the scope of the @Query@ operation by specifying a sort key value and a comparison operator in @KeyConditionExpression@ . To further refine the @Query@ results, you can optionally provide a @FilterExpression@ . A @FilterExpression@ determines which items within the results should be returned to you. All of the other results are discarded.
--
-- A @Query@ operation always returns a result set. If no matching items are found, the result set will be empty. Queries that do not return results consume the minimum number of read capacity units for that type of read operation.
--
-- @Query@ results are always sorted by the sort key value. If the data type of the sort key is Number, the results are returned in numeric order; otherwise, the results are returned in order of UTF-8 bytes. By default, the sort order is ascending. To reverse the order, set the @ScanIndexForward@ parameter to false.
--
-- A single @Query@ operation will read up to the maximum number of items set (if using the @Limit@ parameter) or a maximum of 1 MB of data and then apply any filtering to the results using @FilterExpression@ . If @LastEvaluatedKey@ is present in the response, you will need to paginate the result set. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination Paginating the Results> in the /Amazon DynamoDB Developer Guide/ .
--
-- @FilterExpression@ is applied after a @Query@ finishes, but before the results are returned. A @FilterExpression@ cannot contain partition key or sort key attributes. You need to specify those attributes in the @KeyConditionExpression@ .
--
-- You can query a table, a local secondary index, or a global secondary index. For a query on a table or on a local secondary index, you can set the @ConsistentRead@ parameter to @true@ and obtain a strongly consistent result. Global secondary indexes support eventually consistent reads only, so do not specify @ConsistentRead@ when querying a global secondary index.
--
--
-- This operation returns paginated results.
module Network.AWS.DynamoDB.Query
  ( -- * Creating a Request
    query,
    Query,

    -- * Request Lenses
    qProjectionExpression,
    qExclusiveStartKey,
    qIndexName,
    qExpressionAttributeValues,
    qKeyConditionExpression,
    qConsistentRead,
    qExpressionAttributeNames,
    qFilterExpression,
    qKeyConditions,
    qReturnConsumedCapacity,
    qConditionalOperator,
    qSelect,
    qLimit,
    qAttributesToGet,
    qScanIndexForward,
    qQueryFilter,
    qTableName,

    -- * Destructuring the Response
    queryResponse,
    QueryResponse,

    -- * Response Lenses
    qrrsItems,
    qrrsScannedCount,
    qrrsLastEvaluatedKey,
    qrrsConsumedCapacity,
    qrrsCount,
    qrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @Query@ operation.
--
--
--
-- /See:/ 'query' smart constructor.
data Query = Query'
  { _qProjectionExpression ::
      !(Maybe Text),
    _qExclusiveStartKey ::
      !(Maybe (Map Text AttributeValue)),
    _qIndexName :: !(Maybe Text),
    _qExpressionAttributeValues ::
      !(Maybe (Map Text AttributeValue)),
    _qKeyConditionExpression :: !(Maybe Text),
    _qConsistentRead :: !(Maybe Bool),
    _qExpressionAttributeNames ::
      !(Maybe (Map Text Text)),
    _qFilterExpression :: !(Maybe Text),
    _qKeyConditions :: !(Maybe (Map Text Condition)),
    _qReturnConsumedCapacity ::
      !(Maybe ReturnConsumedCapacity),
    _qConditionalOperator ::
      !(Maybe ConditionalOperator),
    _qSelect :: !(Maybe Select),
    _qLimit :: !(Maybe Nat),
    _qAttributesToGet :: !(Maybe (List1 Text)),
    _qScanIndexForward :: !(Maybe Bool),
    _qQueryFilter :: !(Maybe (Map Text Condition)),
    _qTableName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Query' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qProjectionExpression' - A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas. If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Accessing Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qExclusiveStartKey' - The primary key of the first item that this operation will evaluate. Use the value that was returned for @LastEvaluatedKey@ in the previous operation. The data type for @ExclusiveStartKey@ must be String, Number, or Binary. No set data types are allowed.
--
-- * 'qIndexName' - The name of an index to query. This index can be any local secondary index or global secondary index on the table. Note that if you use the @IndexName@ parameter, you must also provide @TableName.@
--
-- * 'qExpressionAttributeValues' - One or more values that can be substituted in an expression. Use the __:__ (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the /ProductStatus/ attribute was one of the following:  @Available | Backordered | Discontinued@  You would first need to specify @ExpressionAttributeValues@ as follows: @{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }@  You could then use these values in an expression, such as this: @ProductStatus IN (:avail, :back, :disc)@  For more information on expression attribute values, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html Specifying Conditions> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qKeyConditionExpression' - The condition that specifies the key values for items to be retrieved by the @Query@ action. The condition must perform an equality test on a single partition key value. The condition can optionally perform one of several comparison tests on a single sort key value. This allows @Query@ to retrieve one item with a given partition key value and sort key value, or several items that have the same partition key value but different sort key values. The partition key equality test is required, and must be specified in the following format: @partitionKeyName@ /=/ @:partitionkeyval@  If you also want to provide a condition for the sort key, it must be combined using @AND@ with the condition for the sort key. Following is an example, using the __=__ comparison operator for the sort key: @partitionKeyName@ @=@ @:partitionkeyval@ @AND@ @sortKeyName@ @=@ @:sortkeyval@  Valid comparisons for the sort key condition are as follows:     * @sortKeyName@ @=@ @:sortkeyval@ - true if the sort key value is equal to @:sortkeyval@ .     * @sortKeyName@ @<@ @:sortkeyval@ - true if the sort key value is less than @:sortkeyval@ .     * @sortKeyName@ @<=@ @:sortkeyval@ - true if the sort key value is less than or equal to @:sortkeyval@ .     * @sortKeyName@ @>@ @:sortkeyval@ - true if the sort key value is greater than @:sortkeyval@ .     * @sortKeyName@ @>= @ @:sortkeyval@ - true if the sort key value is greater than or equal to @:sortkeyval@ .     * @sortKeyName@ @BETWEEN@ @:sortkeyval1@ @AND@ @:sortkeyval2@ - true if the sort key value is greater than or equal to @:sortkeyval1@ , and less than or equal to @:sortkeyval2@ .     * @begins_with (@ @sortKeyName@ , @:sortkeyval@ @)@ - true if the sort key value begins with a particular operand. (You cannot use this function with a sort key that is of type Number.) Note that the function name @begins_with@ is case-sensitive. Use the @ExpressionAttributeValues@ parameter to replace tokens such as @:partitionval@ and @:sortval@ with actual values at runtime. You can optionally use the @ExpressionAttributeNames@ parameter to replace the names of the partition key and sort key with placeholder tokens. This option might be necessary if an attribute name conflicts with a DynamoDB reserved word. For example, the following @KeyConditionExpression@ parameter causes an error because /Size/ is a reserved word:     * @Size = :myval@  To work around this, define a placeholder (such a @#S@ ) to represent the attribute name /Size/ . @KeyConditionExpression@ then is as follows:     * @#S = :myval@  For a list of reserved words, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html Reserved Words> in the /Amazon DynamoDB Developer Guide/ . For more information on @ExpressionAttributeNames@ and @ExpressionAttributeValues@ , see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html Using Placeholders for Attribute Names and Values> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qConsistentRead' - Determines the read consistency model: If set to @true@ , then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads. Strongly consistent reads are not supported on global secondary indexes. If you query a global secondary index with @ConsistentRead@ set to @true@ , you will receive a @ValidationException@ .
--
-- * 'qExpressionAttributeNames' - One or more substitution tokens for attribute names in an expression. The following are some use cases for using @ExpressionAttributeNames@ :     * To access an attribute whose name conflicts with a DynamoDB reserved word.     * To create a placeholder for repeating occurrences of an attribute name in an expression.     * To prevent special characters in an attribute name from being misinterpreted in an expression. Use the __#__ character in an expression to dereference an attribute name. For example, consider the following attribute name:     * @Percentile@  The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html Reserved Words> in the /Amazon DynamoDB Developer Guide/ ). To work around this, you could specify the following for @ExpressionAttributeNames@ :     * @{"#P":"Percentile"}@  You could then use this substitution in an expression, as in this example:     * @#P = :val@  For more information on expression attribute names, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Specifying Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qFilterExpression' - A string that contains conditions that DynamoDB applies after the @Query@ operation, but before the data is returned to you. Items that do not satisfy the @FilterExpression@ criteria are not returned. A @FilterExpression@ does not allow key attributes. You cannot define a filter expression based on a partition key or a sort key. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults Filter Expressions> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qKeyConditions' - This is a legacy parameter. Use @KeyConditionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html KeyConditions> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qReturnConsumedCapacity' - Undocumented member.
--
-- * 'qConditionalOperator' - This is a legacy parameter. Use @FilterExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html ConditionalOperator> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qSelect' - The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.     * @ALL_ATTRIBUTES@ - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index, DynamoDB fetches the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.     * @ALL_PROJECTED_ATTRIBUTES@ - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying @ALL_ATTRIBUTES@ .     * @COUNT@ - Returns the number of matching items, rather than the matching items themselves.     * @SPECIFIC_ATTRIBUTES@ - Returns only the attributes listed in @AttributesToGet@ . This return value is equivalent to specifying @AttributesToGet@ without specifying any value for @Select@ . If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB fetches each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency. If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table. If neither @Select@ nor @AttributesToGet@ are specified, DynamoDB defaults to @ALL_ATTRIBUTES@ when accessing a table, and @ALL_PROJECTED_ATTRIBUTES@ when accessing an index. You cannot use both @Select@ and @AttributesToGet@ together in a single request, unless the value for @Select@ is @SPECIFIC_ATTRIBUTES@ . (This usage is equivalent to specifying @AttributesToGet@ without any value for @Select@ .)
--
-- * 'qLimit' - The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in @LastEvaluatedKey@ to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in @LastEvaluatedKey@ to apply in a subsequent operation to continue the operation. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html Query and Scan> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qAttributesToGet' - This is a legacy parameter. Use @ProjectionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html AttributesToGet> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qScanIndexForward' - Specifies the order for index traversal: If @true@ (default), the traversal is performed in ascending order; if @false@ , the traversal is performed in descending order.  Items with the same partition key value are stored in sorted order by sort key. If the sort key data type is Number, the results are stored in numeric order. For type String, the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each byte of the binary data as unsigned. If @ScanIndexForward@ is @true@ , DynamoDB returns the results in the order in which they are stored (by sort key value). This is the default behavior. If @ScanIndexForward@ is @false@ , DynamoDB reads the results in reverse order by sort key value, and then returns the results to the client.
--
-- * 'qQueryFilter' - This is a legacy parameter. Use @FilterExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html QueryFilter> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qTableName' - The name of the table containing the requested items.
query ::
  -- | 'qTableName'
  Text ->
  Query
query pTableName_ =
  Query'
    { _qProjectionExpression = Nothing,
      _qExclusiveStartKey = Nothing,
      _qIndexName = Nothing,
      _qExpressionAttributeValues = Nothing,
      _qKeyConditionExpression = Nothing,
      _qConsistentRead = Nothing,
      _qExpressionAttributeNames = Nothing,
      _qFilterExpression = Nothing,
      _qKeyConditions = Nothing,
      _qReturnConsumedCapacity = Nothing,
      _qConditionalOperator = Nothing,
      _qSelect = Nothing,
      _qLimit = Nothing,
      _qAttributesToGet = Nothing,
      _qScanIndexForward = Nothing,
      _qQueryFilter = Nothing,
      _qTableName = pTableName_
    }

-- | A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas. If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Accessing Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
qProjectionExpression :: Lens' Query (Maybe Text)
qProjectionExpression = lens _qProjectionExpression (\s a -> s {_qProjectionExpression = a})

-- | The primary key of the first item that this operation will evaluate. Use the value that was returned for @LastEvaluatedKey@ in the previous operation. The data type for @ExclusiveStartKey@ must be String, Number, or Binary. No set data types are allowed.
qExclusiveStartKey :: Lens' Query (HashMap Text AttributeValue)
qExclusiveStartKey = lens _qExclusiveStartKey (\s a -> s {_qExclusiveStartKey = a}) . _Default . _Map

-- | The name of an index to query. This index can be any local secondary index or global secondary index on the table. Note that if you use the @IndexName@ parameter, you must also provide @TableName.@
qIndexName :: Lens' Query (Maybe Text)
qIndexName = lens _qIndexName (\s a -> s {_qIndexName = a})

-- | One or more values that can be substituted in an expression. Use the __:__ (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the /ProductStatus/ attribute was one of the following:  @Available | Backordered | Discontinued@  You would first need to specify @ExpressionAttributeValues@ as follows: @{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }@  You could then use these values in an expression, such as this: @ProductStatus IN (:avail, :back, :disc)@  For more information on expression attribute values, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html Specifying Conditions> in the /Amazon DynamoDB Developer Guide/ .
qExpressionAttributeValues :: Lens' Query (HashMap Text AttributeValue)
qExpressionAttributeValues = lens _qExpressionAttributeValues (\s a -> s {_qExpressionAttributeValues = a}) . _Default . _Map

-- | The condition that specifies the key values for items to be retrieved by the @Query@ action. The condition must perform an equality test on a single partition key value. The condition can optionally perform one of several comparison tests on a single sort key value. This allows @Query@ to retrieve one item with a given partition key value and sort key value, or several items that have the same partition key value but different sort key values. The partition key equality test is required, and must be specified in the following format: @partitionKeyName@ /=/ @:partitionkeyval@  If you also want to provide a condition for the sort key, it must be combined using @AND@ with the condition for the sort key. Following is an example, using the __=__ comparison operator for the sort key: @partitionKeyName@ @=@ @:partitionkeyval@ @AND@ @sortKeyName@ @=@ @:sortkeyval@  Valid comparisons for the sort key condition are as follows:     * @sortKeyName@ @=@ @:sortkeyval@ - true if the sort key value is equal to @:sortkeyval@ .     * @sortKeyName@ @<@ @:sortkeyval@ - true if the sort key value is less than @:sortkeyval@ .     * @sortKeyName@ @<=@ @:sortkeyval@ - true if the sort key value is less than or equal to @:sortkeyval@ .     * @sortKeyName@ @>@ @:sortkeyval@ - true if the sort key value is greater than @:sortkeyval@ .     * @sortKeyName@ @>= @ @:sortkeyval@ - true if the sort key value is greater than or equal to @:sortkeyval@ .     * @sortKeyName@ @BETWEEN@ @:sortkeyval1@ @AND@ @:sortkeyval2@ - true if the sort key value is greater than or equal to @:sortkeyval1@ , and less than or equal to @:sortkeyval2@ .     * @begins_with (@ @sortKeyName@ , @:sortkeyval@ @)@ - true if the sort key value begins with a particular operand. (You cannot use this function with a sort key that is of type Number.) Note that the function name @begins_with@ is case-sensitive. Use the @ExpressionAttributeValues@ parameter to replace tokens such as @:partitionval@ and @:sortval@ with actual values at runtime. You can optionally use the @ExpressionAttributeNames@ parameter to replace the names of the partition key and sort key with placeholder tokens. This option might be necessary if an attribute name conflicts with a DynamoDB reserved word. For example, the following @KeyConditionExpression@ parameter causes an error because /Size/ is a reserved word:     * @Size = :myval@  To work around this, define a placeholder (such a @#S@ ) to represent the attribute name /Size/ . @KeyConditionExpression@ then is as follows:     * @#S = :myval@  For a list of reserved words, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html Reserved Words> in the /Amazon DynamoDB Developer Guide/ . For more information on @ExpressionAttributeNames@ and @ExpressionAttributeValues@ , see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html Using Placeholders for Attribute Names and Values> in the /Amazon DynamoDB Developer Guide/ .
qKeyConditionExpression :: Lens' Query (Maybe Text)
qKeyConditionExpression = lens _qKeyConditionExpression (\s a -> s {_qKeyConditionExpression = a})

-- | Determines the read consistency model: If set to @true@ , then the operation uses strongly consistent reads; otherwise, the operation uses eventually consistent reads. Strongly consistent reads are not supported on global secondary indexes. If you query a global secondary index with @ConsistentRead@ set to @true@ , you will receive a @ValidationException@ .
qConsistentRead :: Lens' Query (Maybe Bool)
qConsistentRead = lens _qConsistentRead (\s a -> s {_qConsistentRead = a})

-- | One or more substitution tokens for attribute names in an expression. The following are some use cases for using @ExpressionAttributeNames@ :     * To access an attribute whose name conflicts with a DynamoDB reserved word.     * To create a placeholder for repeating occurrences of an attribute name in an expression.     * To prevent special characters in an attribute name from being misinterpreted in an expression. Use the __#__ character in an expression to dereference an attribute name. For example, consider the following attribute name:     * @Percentile@  The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html Reserved Words> in the /Amazon DynamoDB Developer Guide/ ). To work around this, you could specify the following for @ExpressionAttributeNames@ :     * @{"#P":"Percentile"}@  You could then use this substitution in an expression, as in this example:     * @#P = :val@  For more information on expression attribute names, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Specifying Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
qExpressionAttributeNames :: Lens' Query (HashMap Text Text)
qExpressionAttributeNames = lens _qExpressionAttributeNames (\s a -> s {_qExpressionAttributeNames = a}) . _Default . _Map

-- | A string that contains conditions that DynamoDB applies after the @Query@ operation, but before the data is returned to you. Items that do not satisfy the @FilterExpression@ criteria are not returned. A @FilterExpression@ does not allow key attributes. You cannot define a filter expression based on a partition key or a sort key. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults Filter Expressions> in the /Amazon DynamoDB Developer Guide/ .
qFilterExpression :: Lens' Query (Maybe Text)
qFilterExpression = lens _qFilterExpression (\s a -> s {_qFilterExpression = a})

-- | This is a legacy parameter. Use @KeyConditionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html KeyConditions> in the /Amazon DynamoDB Developer Guide/ .
qKeyConditions :: Lens' Query (HashMap Text Condition)
qKeyConditions = lens _qKeyConditions (\s a -> s {_qKeyConditions = a}) . _Default . _Map

-- | Undocumented member.
qReturnConsumedCapacity :: Lens' Query (Maybe ReturnConsumedCapacity)
qReturnConsumedCapacity = lens _qReturnConsumedCapacity (\s a -> s {_qReturnConsumedCapacity = a})

-- | This is a legacy parameter. Use @FilterExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html ConditionalOperator> in the /Amazon DynamoDB Developer Guide/ .
qConditionalOperator :: Lens' Query (Maybe ConditionalOperator)
qConditionalOperator = lens _qConditionalOperator (\s a -> s {_qConditionalOperator = a})

-- | The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.     * @ALL_ATTRIBUTES@ - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index, DynamoDB fetches the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.     * @ALL_PROJECTED_ATTRIBUTES@ - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying @ALL_ATTRIBUTES@ .     * @COUNT@ - Returns the number of matching items, rather than the matching items themselves.     * @SPECIFIC_ATTRIBUTES@ - Returns only the attributes listed in @AttributesToGet@ . This return value is equivalent to specifying @AttributesToGet@ without specifying any value for @Select@ . If you query or scan a local secondary index and request only attributes that are projected into that index, the operation will read only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB fetches each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency. If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table. If neither @Select@ nor @AttributesToGet@ are specified, DynamoDB defaults to @ALL_ATTRIBUTES@ when accessing a table, and @ALL_PROJECTED_ATTRIBUTES@ when accessing an index. You cannot use both @Select@ and @AttributesToGet@ together in a single request, unless the value for @Select@ is @SPECIFIC_ATTRIBUTES@ . (This usage is equivalent to specifying @AttributesToGet@ without any value for @Select@ .)
qSelect :: Lens' Query (Maybe Select)
qSelect = lens _qSelect (\s a -> s {_qSelect = a})

-- | The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in @LastEvaluatedKey@ to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in @LastEvaluatedKey@ to apply in a subsequent operation to continue the operation. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html Query and Scan> in the /Amazon DynamoDB Developer Guide/ .
qLimit :: Lens' Query (Maybe Natural)
qLimit = lens _qLimit (\s a -> s {_qLimit = a}) . mapping _Nat

-- | This is a legacy parameter. Use @ProjectionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html AttributesToGet> in the /Amazon DynamoDB Developer Guide/ .
qAttributesToGet :: Lens' Query (Maybe (NonEmpty Text))
qAttributesToGet = lens _qAttributesToGet (\s a -> s {_qAttributesToGet = a}) . mapping _List1

-- | Specifies the order for index traversal: If @true@ (default), the traversal is performed in ascending order; if @false@ , the traversal is performed in descending order.  Items with the same partition key value are stored in sorted order by sort key. If the sort key data type is Number, the results are stored in numeric order. For type String, the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each byte of the binary data as unsigned. If @ScanIndexForward@ is @true@ , DynamoDB returns the results in the order in which they are stored (by sort key value). This is the default behavior. If @ScanIndexForward@ is @false@ , DynamoDB reads the results in reverse order by sort key value, and then returns the results to the client.
qScanIndexForward :: Lens' Query (Maybe Bool)
qScanIndexForward = lens _qScanIndexForward (\s a -> s {_qScanIndexForward = a})

-- | This is a legacy parameter. Use @FilterExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html QueryFilter> in the /Amazon DynamoDB Developer Guide/ .
qQueryFilter :: Lens' Query (HashMap Text Condition)
qQueryFilter = lens _qQueryFilter (\s a -> s {_qQueryFilter = a}) . _Default . _Map

-- | The name of the table containing the requested items.
qTableName :: Lens' Query Text
qTableName = lens _qTableName (\s a -> s {_qTableName = a})

instance AWSPager Query where
  page rq rs
    | stop (rs ^. qrrsLastEvaluatedKey) = Nothing
    | otherwise =
      Just $
        rq
          & qExclusiveStartKey .~ rs ^. qrrsLastEvaluatedKey

instance AWSRequest Query where
  type Rs Query = QueryResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          QueryResponse'
            <$> (x .?> "Items" .!@ mempty)
            <*> (x .?> "ScannedCount")
            <*> (x .?> "LastEvaluatedKey" .!@ mempty)
            <*> (x .?> "ConsumedCapacity")
            <*> (x .?> "Count")
            <*> (pure (fromEnum s))
      )

instance Hashable Query

instance NFData Query

instance ToHeaders Query where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DynamoDB_20120810.Query" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON Query where
  toJSON Query' {..} =
    object
      ( catMaybes
          [ ("ProjectionExpression" .=)
              <$> _qProjectionExpression,
            ("ExclusiveStartKey" .=) <$> _qExclusiveStartKey,
            ("IndexName" .=) <$> _qIndexName,
            ("ExpressionAttributeValues" .=)
              <$> _qExpressionAttributeValues,
            ("KeyConditionExpression" .=)
              <$> _qKeyConditionExpression,
            ("ConsistentRead" .=) <$> _qConsistentRead,
            ("ExpressionAttributeNames" .=)
              <$> _qExpressionAttributeNames,
            ("FilterExpression" .=) <$> _qFilterExpression,
            ("KeyConditions" .=) <$> _qKeyConditions,
            ("ReturnConsumedCapacity" .=)
              <$> _qReturnConsumedCapacity,
            ("ConditionalOperator" .=) <$> _qConditionalOperator,
            ("Select" .=) <$> _qSelect,
            ("Limit" .=) <$> _qLimit,
            ("AttributesToGet" .=) <$> _qAttributesToGet,
            ("ScanIndexForward" .=) <$> _qScanIndexForward,
            ("QueryFilter" .=) <$> _qQueryFilter,
            Just ("TableName" .= _qTableName)
          ]
      )

instance ToPath Query where
  toPath = const "/"

instance ToQuery Query where
  toQuery = const mempty

-- | Represents the output of a @Query@ operation.
--
--
--
-- /See:/ 'queryResponse' smart constructor.
data QueryResponse = QueryResponse'
  { _qrrsItems ::
      !(Maybe [Map Text AttributeValue]),
    _qrrsScannedCount :: !(Maybe Int),
    _qrrsLastEvaluatedKey ::
      !(Maybe (Map Text AttributeValue)),
    _qrrsConsumedCapacity ::
      !(Maybe ConsumedCapacity),
    _qrrsCount :: !(Maybe Int),
    _qrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qrrsItems' - An array of item attributes that match the query criteria. Each element in this array consists of an attribute name and the value for that attribute.
--
-- * 'qrrsScannedCount' - The number of items evaluated, before any @QueryFilter@ is applied. A high @ScannedCount@ value with few, or no, @Count@ results indicates an inefficient @Query@ operation. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count Count and ScannedCount> in the /Amazon DynamoDB Developer Guide/ . If you did not use a filter in the request, then @ScannedCount@ is the same as @Count@ .
--
-- * 'qrrsLastEvaluatedKey' - The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If @LastEvaluatedKey@ is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If @LastEvaluatedKey@ is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when @LastEvaluatedKey@ is empty.
--
-- * 'qrrsConsumedCapacity' - The capacity units consumed by the @Query@ operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. @ConsumedCapacity@ is only returned if the @ReturnConsumedCapacity@ parameter was specified. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html Provisioned Throughput> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'qrrsCount' - The number of items in the response. If you used a @QueryFilter@ in the request, then @Count@ is the number of items returned after the filter was applied, and @ScannedCount@ is the number of matching items before the filter was applied. If you did not use a filter in the request, then @Count@ and @ScannedCount@ are the same.
--
-- * 'qrrsResponseStatus' - -- | The response status code.
queryResponse ::
  -- | 'qrrsResponseStatus'
  Int ->
  QueryResponse
queryResponse pResponseStatus_ =
  QueryResponse'
    { _qrrsItems = Nothing,
      _qrrsScannedCount = Nothing,
      _qrrsLastEvaluatedKey = Nothing,
      _qrrsConsumedCapacity = Nothing,
      _qrrsCount = Nothing,
      _qrrsResponseStatus = pResponseStatus_
    }

-- | An array of item attributes that match the query criteria. Each element in this array consists of an attribute name and the value for that attribute.
qrrsItems :: Lens' QueryResponse [HashMap Text AttributeValue]
qrrsItems = lens _qrrsItems (\s a -> s {_qrrsItems = a}) . _Default . _Coerce

-- | The number of items evaluated, before any @QueryFilter@ is applied. A high @ScannedCount@ value with few, or no, @Count@ results indicates an inefficient @Query@ operation. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count Count and ScannedCount> in the /Amazon DynamoDB Developer Guide/ . If you did not use a filter in the request, then @ScannedCount@ is the same as @Count@ .
qrrsScannedCount :: Lens' QueryResponse (Maybe Int)
qrrsScannedCount = lens _qrrsScannedCount (\s a -> s {_qrrsScannedCount = a})

-- | The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If @LastEvaluatedKey@ is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If @LastEvaluatedKey@ is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when @LastEvaluatedKey@ is empty.
qrrsLastEvaluatedKey :: Lens' QueryResponse (HashMap Text AttributeValue)
qrrsLastEvaluatedKey = lens _qrrsLastEvaluatedKey (\s a -> s {_qrrsLastEvaluatedKey = a}) . _Default . _Map

-- | The capacity units consumed by the @Query@ operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. @ConsumedCapacity@ is only returned if the @ReturnConsumedCapacity@ parameter was specified. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html Provisioned Throughput> in the /Amazon DynamoDB Developer Guide/ .
qrrsConsumedCapacity :: Lens' QueryResponse (Maybe ConsumedCapacity)
qrrsConsumedCapacity = lens _qrrsConsumedCapacity (\s a -> s {_qrrsConsumedCapacity = a})

-- | The number of items in the response. If you used a @QueryFilter@ in the request, then @Count@ is the number of items returned after the filter was applied, and @ScannedCount@ is the number of matching items before the filter was applied. If you did not use a filter in the request, then @Count@ and @ScannedCount@ are the same.
qrrsCount :: Lens' QueryResponse (Maybe Int)
qrrsCount = lens _qrrsCount (\s a -> s {_qrrsCount = a})

-- | -- | The response status code.
qrrsResponseStatus :: Lens' QueryResponse Int
qrrsResponseStatus = lens _qrrsResponseStatus (\s a -> s {_qrrsResponseStatus = a})

instance NFData QueryResponse
