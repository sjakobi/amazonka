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
-- Module      : Network.AWS.DynamoDB.Scan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @Scan@ operation returns one or more items and item attributes by accessing every item in a table or a secondary index. To have DynamoDB return fewer items, you can provide a @FilterExpression@ operation.
--
--
-- If the total number of scanned items exceeds the maximum dataset size limit of 1 MB, the scan stops and results are returned to the user as a @LastEvaluatedKey@ value to continue the scan in a subsequent operation. The results also include the number of items exceeding the limit. A scan can result in no table data meeting the filter criteria.
--
-- A single @Scan@ operation reads up to the maximum number of items set (if using the @Limit@ parameter) or a maximum of 1 MB of data and then apply any filtering to the results using @FilterExpression@ . If @LastEvaluatedKey@ is present in the response, you need to paginate the result set. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination Paginating the Results> in the /Amazon DynamoDB Developer Guide/ .
--
-- @Scan@ operations proceed sequentially; however, for faster performance on a large table or secondary index, applications can request a parallel @Scan@ operation by providing the @Segment@ and @TotalSegments@ parameters. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan Parallel Scan> in the /Amazon DynamoDB Developer Guide/ .
--
-- @Scan@ uses eventually consistent reads when accessing the data in a table; therefore, the result set might not include the changes to data in the table immediately before the operation began. If you need a consistent copy of the data, as of the time that the @Scan@ begins, you can set the @ConsistentRead@ parameter to @true@ .
--
--
-- This operation returns paginated results.
module Network.AWS.DynamoDB.Scan
  ( -- * Creating a Request
    scan,
    Scan,

    -- * Request Lenses
    sScanFilter,
    sProjectionExpression,
    sExclusiveStartKey,
    sIndexName,
    sExpressionAttributeValues,
    sSegment,
    sConsistentRead,
    sExpressionAttributeNames,
    sFilterExpression,
    sReturnConsumedCapacity,
    sConditionalOperator,
    sSelect,
    sLimit,
    sAttributesToGet,
    sTotalSegments,
    sTableName,

    -- * Destructuring the Response
    scanResponse,
    ScanResponse,

    -- * Response Lenses
    srrsItems,
    srrsScannedCount,
    srrsLastEvaluatedKey,
    srrsConsumedCapacity,
    srrsCount,
    srrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @Scan@ operation.
--
--
--
-- /See:/ 'scan' smart constructor.
data Scan = Scan'
  { _sScanFilter ::
      !(Maybe (Map Text Condition)),
    _sProjectionExpression :: !(Maybe Text),
    _sExclusiveStartKey ::
      !(Maybe (Map Text AttributeValue)),
    _sIndexName :: !(Maybe Text),
    _sExpressionAttributeValues ::
      !(Maybe (Map Text AttributeValue)),
    _sSegment :: !(Maybe Nat),
    _sConsistentRead :: !(Maybe Bool),
    _sExpressionAttributeNames ::
      !(Maybe (Map Text Text)),
    _sFilterExpression :: !(Maybe Text),
    _sReturnConsumedCapacity ::
      !(Maybe ReturnConsumedCapacity),
    _sConditionalOperator ::
      !(Maybe ConditionalOperator),
    _sSelect :: !(Maybe Select),
    _sLimit :: !(Maybe Nat),
    _sAttributesToGet :: !(Maybe (List1 Text)),
    _sTotalSegments :: !(Maybe Nat),
    _sTableName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Scan' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sScanFilter' - This is a legacy parameter. Use @FilterExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html ScanFilter> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'sProjectionExpression' - A string that identifies one or more attributes to retrieve from the specified table or index. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas. If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Specifying Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'sExclusiveStartKey' - The primary key of the first item that this operation will evaluate. Use the value that was returned for @LastEvaluatedKey@ in the previous operation. The data type for @ExclusiveStartKey@ must be String, Number or Binary. No set data types are allowed. In a parallel scan, a @Scan@ request that includes @ExclusiveStartKey@ must specify the same segment whose previous @Scan@ returned the corresponding value of @LastEvaluatedKey@ .
--
-- * 'sIndexName' - The name of a secondary index to scan. This index can be any local secondary index or global secondary index. Note that if you use the @IndexName@ parameter, you must also provide @TableName@ .
--
-- * 'sExpressionAttributeValues' - One or more values that can be substituted in an expression. Use the __:__ (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the @ProductStatus@ attribute was one of the following:  @Available | Backordered | Discontinued@  You would first need to specify @ExpressionAttributeValues@ as follows: @{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }@  You could then use these values in an expression, such as this: @ProductStatus IN (:avail, :back, :disc)@  For more information on expression attribute values, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html Condition Expressions> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'sSegment' - For a parallel @Scan@ request, @Segment@ identifies an individual segment to be scanned by an application worker. Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to scan a table or an index, then the first thread specifies a @Segment@ value of 0, the second thread specifies 1, and so on. The value of @LastEvaluatedKey@ returned from a parallel @Scan@ request must be used as @ExclusiveStartKey@ with the same segment ID in a subsequent @Scan@ operation. The value for @Segment@ must be greater than or equal to 0, and less than the value provided for @TotalSegments@ . If you provide @Segment@ , you must also provide @TotalSegments@ .
--
-- * 'sConsistentRead' - A Boolean value that determines the read consistency model during the scan:     * If @ConsistentRead@ is @false@ , then the data returned from @Scan@ might not contain the results from other recently completed write operations (@PutItem@ , @UpdateItem@ , or @DeleteItem@ ).     * If @ConsistentRead@ is @true@ , then all of the write operations that completed before the @Scan@ began are guaranteed to be contained in the @Scan@ response. The default setting for @ConsistentRead@ is @false@ . The @ConsistentRead@ parameter is not supported on global secondary indexes. If you scan a global secondary index with @ConsistentRead@ set to true, you will receive a @ValidationException@ .
--
-- * 'sExpressionAttributeNames' - One or more substitution tokens for attribute names in an expression. The following are some use cases for using @ExpressionAttributeNames@ :     * To access an attribute whose name conflicts with a DynamoDB reserved word.     * To create a placeholder for repeating occurrences of an attribute name in an expression.     * To prevent special characters in an attribute name from being misinterpreted in an expression. Use the __#__ character in an expression to dereference an attribute name. For example, consider the following attribute name:     * @Percentile@  The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html Reserved Words> in the /Amazon DynamoDB Developer Guide/ ). To work around this, you could specify the following for @ExpressionAttributeNames@ :     * @{"#P":"Percentile"}@  You could then use this substitution in an expression, as in this example:     * @#P = :val@  For more information on expression attribute names, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Specifying Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'sFilterExpression' - A string that contains conditions that DynamoDB applies after the @Scan@ operation, but before the data is returned to you. Items that do not satisfy the @FilterExpression@ criteria are not returned. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults Filter Expressions> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'sReturnConsumedCapacity' - Undocumented member.
--
-- * 'sConditionalOperator' - This is a legacy parameter. Use @FilterExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html ConditionalOperator> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'sSelect' - The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.     * @ALL_ATTRIBUTES@ - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index, DynamoDB fetches the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.     * @ALL_PROJECTED_ATTRIBUTES@ - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying @ALL_ATTRIBUTES@ .     * @COUNT@ - Returns the number of matching items, rather than the matching items themselves.     * @SPECIFIC_ATTRIBUTES@ - Returns only the attributes listed in @AttributesToGet@ . This return value is equivalent to specifying @AttributesToGet@ without specifying any value for @Select@ . If you query or scan a local secondary index and request only attributes that are projected into that index, the operation reads only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB fetches each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency. If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table. If neither @Select@ nor @AttributesToGet@ are specified, DynamoDB defaults to @ALL_ATTRIBUTES@ when accessing a table, and @ALL_PROJECTED_ATTRIBUTES@ when accessing an index. You cannot use both @Select@ and @AttributesToGet@ together in a single request, unless the value for @Select@ is @SPECIFIC_ATTRIBUTES@ . (This usage is equivalent to specifying @AttributesToGet@ without any value for @Select@ .)
--
-- * 'sLimit' - The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in @LastEvaluatedKey@ to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in @LastEvaluatedKey@ to apply in a subsequent operation to continue the operation. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html Working with Queries> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'sAttributesToGet' - This is a legacy parameter. Use @ProjectionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html AttributesToGet> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'sTotalSegments' - For a parallel @Scan@ request, @TotalSegments@ represents the total number of segments into which the @Scan@ operation will be divided. The value of @TotalSegments@ corresponds to the number of application workers that will perform the parallel scan. For example, if you want to use four application threads to scan a table or an index, specify a @TotalSegments@ value of 4. The value for @TotalSegments@ must be greater than or equal to 1, and less than or equal to 1000000. If you specify a @TotalSegments@ value of 1, the @Scan@ operation will be sequential rather than parallel. If you specify @TotalSegments@ , you must also specify @Segment@ .
--
-- * 'sTableName' - The name of the table containing the requested items; or, if you provide @IndexName@ , the name of the table to which that index belongs.
scan ::
  -- | 'sTableName'
  Text ->
  Scan
scan pTableName_ =
  Scan'
    { _sScanFilter = Nothing,
      _sProjectionExpression = Nothing,
      _sExclusiveStartKey = Nothing,
      _sIndexName = Nothing,
      _sExpressionAttributeValues = Nothing,
      _sSegment = Nothing,
      _sConsistentRead = Nothing,
      _sExpressionAttributeNames = Nothing,
      _sFilterExpression = Nothing,
      _sReturnConsumedCapacity = Nothing,
      _sConditionalOperator = Nothing,
      _sSelect = Nothing,
      _sLimit = Nothing,
      _sAttributesToGet = Nothing,
      _sTotalSegments = Nothing,
      _sTableName = pTableName_
    }

-- | This is a legacy parameter. Use @FilterExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html ScanFilter> in the /Amazon DynamoDB Developer Guide/ .
sScanFilter :: Lens' Scan (HashMap Text Condition)
sScanFilter = lens _sScanFilter (\s a -> s {_sScanFilter = a}) . _Default . _Map

-- | A string that identifies one or more attributes to retrieve from the specified table or index. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas. If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Specifying Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
sProjectionExpression :: Lens' Scan (Maybe Text)
sProjectionExpression = lens _sProjectionExpression (\s a -> s {_sProjectionExpression = a})

-- | The primary key of the first item that this operation will evaluate. Use the value that was returned for @LastEvaluatedKey@ in the previous operation. The data type for @ExclusiveStartKey@ must be String, Number or Binary. No set data types are allowed. In a parallel scan, a @Scan@ request that includes @ExclusiveStartKey@ must specify the same segment whose previous @Scan@ returned the corresponding value of @LastEvaluatedKey@ .
sExclusiveStartKey :: Lens' Scan (HashMap Text AttributeValue)
sExclusiveStartKey = lens _sExclusiveStartKey (\s a -> s {_sExclusiveStartKey = a}) . _Default . _Map

-- | The name of a secondary index to scan. This index can be any local secondary index or global secondary index. Note that if you use the @IndexName@ parameter, you must also provide @TableName@ .
sIndexName :: Lens' Scan (Maybe Text)
sIndexName = lens _sIndexName (\s a -> s {_sIndexName = a})

-- | One or more values that can be substituted in an expression. Use the __:__ (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the @ProductStatus@ attribute was one of the following:  @Available | Backordered | Discontinued@  You would first need to specify @ExpressionAttributeValues@ as follows: @{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }@  You could then use these values in an expression, such as this: @ProductStatus IN (:avail, :back, :disc)@  For more information on expression attribute values, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html Condition Expressions> in the /Amazon DynamoDB Developer Guide/ .
sExpressionAttributeValues :: Lens' Scan (HashMap Text AttributeValue)
sExpressionAttributeValues = lens _sExpressionAttributeValues (\s a -> s {_sExpressionAttributeValues = a}) . _Default . _Map

-- | For a parallel @Scan@ request, @Segment@ identifies an individual segment to be scanned by an application worker. Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to scan a table or an index, then the first thread specifies a @Segment@ value of 0, the second thread specifies 1, and so on. The value of @LastEvaluatedKey@ returned from a parallel @Scan@ request must be used as @ExclusiveStartKey@ with the same segment ID in a subsequent @Scan@ operation. The value for @Segment@ must be greater than or equal to 0, and less than the value provided for @TotalSegments@ . If you provide @Segment@ , you must also provide @TotalSegments@ .
sSegment :: Lens' Scan (Maybe Natural)
sSegment = lens _sSegment (\s a -> s {_sSegment = a}) . mapping _Nat

-- | A Boolean value that determines the read consistency model during the scan:     * If @ConsistentRead@ is @false@ , then the data returned from @Scan@ might not contain the results from other recently completed write operations (@PutItem@ , @UpdateItem@ , or @DeleteItem@ ).     * If @ConsistentRead@ is @true@ , then all of the write operations that completed before the @Scan@ began are guaranteed to be contained in the @Scan@ response. The default setting for @ConsistentRead@ is @false@ . The @ConsistentRead@ parameter is not supported on global secondary indexes. If you scan a global secondary index with @ConsistentRead@ set to true, you will receive a @ValidationException@ .
sConsistentRead :: Lens' Scan (Maybe Bool)
sConsistentRead = lens _sConsistentRead (\s a -> s {_sConsistentRead = a})

-- | One or more substitution tokens for attribute names in an expression. The following are some use cases for using @ExpressionAttributeNames@ :     * To access an attribute whose name conflicts with a DynamoDB reserved word.     * To create a placeholder for repeating occurrences of an attribute name in an expression.     * To prevent special characters in an attribute name from being misinterpreted in an expression. Use the __#__ character in an expression to dereference an attribute name. For example, consider the following attribute name:     * @Percentile@  The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html Reserved Words> in the /Amazon DynamoDB Developer Guide/ ). To work around this, you could specify the following for @ExpressionAttributeNames@ :     * @{"#P":"Percentile"}@  You could then use this substitution in an expression, as in this example:     * @#P = :val@  For more information on expression attribute names, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html Specifying Item Attributes> in the /Amazon DynamoDB Developer Guide/ .
sExpressionAttributeNames :: Lens' Scan (HashMap Text Text)
sExpressionAttributeNames = lens _sExpressionAttributeNames (\s a -> s {_sExpressionAttributeNames = a}) . _Default . _Map

-- | A string that contains conditions that DynamoDB applies after the @Scan@ operation, but before the data is returned to you. Items that do not satisfy the @FilterExpression@ criteria are not returned. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults Filter Expressions> in the /Amazon DynamoDB Developer Guide/ .
sFilterExpression :: Lens' Scan (Maybe Text)
sFilterExpression = lens _sFilterExpression (\s a -> s {_sFilterExpression = a})

-- | Undocumented member.
sReturnConsumedCapacity :: Lens' Scan (Maybe ReturnConsumedCapacity)
sReturnConsumedCapacity = lens _sReturnConsumedCapacity (\s a -> s {_sReturnConsumedCapacity = a})

-- | This is a legacy parameter. Use @FilterExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html ConditionalOperator> in the /Amazon DynamoDB Developer Guide/ .
sConditionalOperator :: Lens' Scan (Maybe ConditionalOperator)
sConditionalOperator = lens _sConditionalOperator (\s a -> s {_sConditionalOperator = a})

-- | The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.     * @ALL_ATTRIBUTES@ - Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index, DynamoDB fetches the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.     * @ALL_PROJECTED_ATTRIBUTES@ - Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying @ALL_ATTRIBUTES@ .     * @COUNT@ - Returns the number of matching items, rather than the matching items themselves.     * @SPECIFIC_ATTRIBUTES@ - Returns only the attributes listed in @AttributesToGet@ . This return value is equivalent to specifying @AttributesToGet@ without specifying any value for @Select@ . If you query or scan a local secondary index and request only attributes that are projected into that index, the operation reads only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB fetches each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency. If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table. If neither @Select@ nor @AttributesToGet@ are specified, DynamoDB defaults to @ALL_ATTRIBUTES@ when accessing a table, and @ALL_PROJECTED_ATTRIBUTES@ when accessing an index. You cannot use both @Select@ and @AttributesToGet@ together in a single request, unless the value for @Select@ is @SPECIFIC_ATTRIBUTES@ . (This usage is equivalent to specifying @AttributesToGet@ without any value for @Select@ .)
sSelect :: Lens' Scan (Maybe Select)
sSelect = lens _sSelect (\s a -> s {_sSelect = a})

-- | The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in @LastEvaluatedKey@ to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in @LastEvaluatedKey@ to apply in a subsequent operation to continue the operation. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html Working with Queries> in the /Amazon DynamoDB Developer Guide/ .
sLimit :: Lens' Scan (Maybe Natural)
sLimit = lens _sLimit (\s a -> s {_sLimit = a}) . mapping _Nat

-- | This is a legacy parameter. Use @ProjectionExpression@ instead. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html AttributesToGet> in the /Amazon DynamoDB Developer Guide/ .
sAttributesToGet :: Lens' Scan (Maybe (NonEmpty Text))
sAttributesToGet = lens _sAttributesToGet (\s a -> s {_sAttributesToGet = a}) . mapping _List1

-- | For a parallel @Scan@ request, @TotalSegments@ represents the total number of segments into which the @Scan@ operation will be divided. The value of @TotalSegments@ corresponds to the number of application workers that will perform the parallel scan. For example, if you want to use four application threads to scan a table or an index, specify a @TotalSegments@ value of 4. The value for @TotalSegments@ must be greater than or equal to 1, and less than or equal to 1000000. If you specify a @TotalSegments@ value of 1, the @Scan@ operation will be sequential rather than parallel. If you specify @TotalSegments@ , you must also specify @Segment@ .
sTotalSegments :: Lens' Scan (Maybe Natural)
sTotalSegments = lens _sTotalSegments (\s a -> s {_sTotalSegments = a}) . mapping _Nat

-- | The name of the table containing the requested items; or, if you provide @IndexName@ , the name of the table to which that index belongs.
sTableName :: Lens' Scan Text
sTableName = lens _sTableName (\s a -> s {_sTableName = a})

instance AWSPager Scan where
  page rq rs
    | stop (rs ^. srrsLastEvaluatedKey) = Nothing
    | otherwise =
      Just $
        rq
          & sExclusiveStartKey .~ rs ^. srrsLastEvaluatedKey

instance AWSRequest Scan where
  type Rs Scan = ScanResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          ScanResponse'
            <$> (x .?> "Items" .!@ mempty)
            <*> (x .?> "ScannedCount")
            <*> (x .?> "LastEvaluatedKey" .!@ mempty)
            <*> (x .?> "ConsumedCapacity")
            <*> (x .?> "Count")
            <*> (pure (fromEnum s))
      )

instance Hashable Scan

instance NFData Scan

instance ToHeaders Scan where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DynamoDB_20120810.Scan" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON Scan where
  toJSON Scan' {..} =
    object
      ( catMaybes
          [ ("ScanFilter" .=) <$> _sScanFilter,
            ("ProjectionExpression" .=)
              <$> _sProjectionExpression,
            ("ExclusiveStartKey" .=) <$> _sExclusiveStartKey,
            ("IndexName" .=) <$> _sIndexName,
            ("ExpressionAttributeValues" .=)
              <$> _sExpressionAttributeValues,
            ("Segment" .=) <$> _sSegment,
            ("ConsistentRead" .=) <$> _sConsistentRead,
            ("ExpressionAttributeNames" .=)
              <$> _sExpressionAttributeNames,
            ("FilterExpression" .=) <$> _sFilterExpression,
            ("ReturnConsumedCapacity" .=)
              <$> _sReturnConsumedCapacity,
            ("ConditionalOperator" .=) <$> _sConditionalOperator,
            ("Select" .=) <$> _sSelect,
            ("Limit" .=) <$> _sLimit,
            ("AttributesToGet" .=) <$> _sAttributesToGet,
            ("TotalSegments" .=) <$> _sTotalSegments,
            Just ("TableName" .= _sTableName)
          ]
      )

instance ToPath Scan where
  toPath = const "/"

instance ToQuery Scan where
  toQuery = const mempty

-- | Represents the output of a @Scan@ operation.
--
--
--
-- /See:/ 'scanResponse' smart constructor.
data ScanResponse = ScanResponse'
  { _srrsItems ::
      !(Maybe [Map Text AttributeValue]),
    _srrsScannedCount :: !(Maybe Int),
    _srrsLastEvaluatedKey ::
      !(Maybe (Map Text AttributeValue)),
    _srrsConsumedCapacity ::
      !(Maybe ConsumedCapacity),
    _srrsCount :: !(Maybe Int),
    _srrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ScanResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrsItems' - An array of item attributes that match the scan criteria. Each element in this array consists of an attribute name and the value for that attribute.
--
-- * 'srrsScannedCount' - The number of items evaluated, before any @ScanFilter@ is applied. A high @ScannedCount@ value with few, or no, @Count@ results indicates an inefficient @Scan@ operation. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count Count and ScannedCount> in the /Amazon DynamoDB Developer Guide/ . If you did not use a filter in the request, then @ScannedCount@ is the same as @Count@ .
--
-- * 'srrsLastEvaluatedKey' - The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If @LastEvaluatedKey@ is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If @LastEvaluatedKey@ is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when @LastEvaluatedKey@ is empty.
--
-- * 'srrsConsumedCapacity' - The capacity units consumed by the @Scan@ operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. @ConsumedCapacity@ is only returned if the @ReturnConsumedCapacity@ parameter was specified. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html Provisioned Throughput> in the /Amazon DynamoDB Developer Guide/ .
--
-- * 'srrsCount' - The number of items in the response. If you set @ScanFilter@ in the request, then @Count@ is the number of items returned after the filter was applied, and @ScannedCount@ is the number of matching items before the filter was applied. If you did not use a filter in the request, then @Count@ is the same as @ScannedCount@ .
--
-- * 'srrsResponseStatus' - -- | The response status code.
scanResponse ::
  -- | 'srrsResponseStatus'
  Int ->
  ScanResponse
scanResponse pResponseStatus_ =
  ScanResponse'
    { _srrsItems = Nothing,
      _srrsScannedCount = Nothing,
      _srrsLastEvaluatedKey = Nothing,
      _srrsConsumedCapacity = Nothing,
      _srrsCount = Nothing,
      _srrsResponseStatus = pResponseStatus_
    }

-- | An array of item attributes that match the scan criteria. Each element in this array consists of an attribute name and the value for that attribute.
srrsItems :: Lens' ScanResponse [HashMap Text AttributeValue]
srrsItems = lens _srrsItems (\s a -> s {_srrsItems = a}) . _Default . _Coerce

-- | The number of items evaluated, before any @ScanFilter@ is applied. A high @ScannedCount@ value with few, or no, @Count@ results indicates an inefficient @Scan@ operation. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count Count and ScannedCount> in the /Amazon DynamoDB Developer Guide/ . If you did not use a filter in the request, then @ScannedCount@ is the same as @Count@ .
srrsScannedCount :: Lens' ScanResponse (Maybe Int)
srrsScannedCount = lens _srrsScannedCount (\s a -> s {_srrsScannedCount = a})

-- | The primary key of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request. If @LastEvaluatedKey@ is empty, then the "last page" of results has been processed and there is no more data to be retrieved. If @LastEvaluatedKey@ is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when @LastEvaluatedKey@ is empty.
srrsLastEvaluatedKey :: Lens' ScanResponse (HashMap Text AttributeValue)
srrsLastEvaluatedKey = lens _srrsLastEvaluatedKey (\s a -> s {_srrsLastEvaluatedKey = a}) . _Default . _Map

-- | The capacity units consumed by the @Scan@ operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. @ConsumedCapacity@ is only returned if the @ReturnConsumedCapacity@ parameter was specified. For more information, see <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html Provisioned Throughput> in the /Amazon DynamoDB Developer Guide/ .
srrsConsumedCapacity :: Lens' ScanResponse (Maybe ConsumedCapacity)
srrsConsumedCapacity = lens _srrsConsumedCapacity (\s a -> s {_srrsConsumedCapacity = a})

-- | The number of items in the response. If you set @ScanFilter@ in the request, then @Count@ is the number of items returned after the filter was applied, and @ScannedCount@ is the number of matching items before the filter was applied. If you did not use a filter in the request, then @Count@ is the same as @ScannedCount@ .
srrsCount :: Lens' ScanResponse (Maybe Int)
srrsCount = lens _srrsCount (\s a -> s {_srrsCount = a})

-- | -- | The response status code.
srrsResponseStatus :: Lens' ScanResponse Int
srrsResponseStatus = lens _srrsResponseStatus (\s a -> s {_srrsResponseStatus = a})

instance NFData ScanResponse
