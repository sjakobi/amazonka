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
-- Module      : Network.AWS.Glue.GetPartitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the partitions in a table.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetPartitions
  ( -- * Creating a Request
    getPartitions,
    GetPartitions,

    -- * Request Lenses
    gpNextToken,
    gpCatalogId,
    gpMaxResults,
    gpSegment,
    gpExcludeColumnSchema,
    gpExpression,
    gpDatabaseName,
    gpTableName,

    -- * Destructuring the Response
    getPartitionsResponse,
    GetPartitionsResponse,

    -- * Response Lenses
    grsNextToken,
    grsPartitions,
    grsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPartitions' smart constructor.
data GetPartitions = GetPartitions'
  { _gpNextToken ::
      !(Maybe Text),
    _gpCatalogId :: !(Maybe Text),
    _gpMaxResults :: !(Maybe Nat),
    _gpSegment :: !(Maybe Segment),
    _gpExcludeColumnSchema :: !(Maybe Bool),
    _gpExpression :: !(Maybe Text),
    _gpDatabaseName :: !Text,
    _gpTableName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetPartitions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpNextToken' - A continuation token, if this is not the first call to retrieve these partitions.
--
-- * 'gpCatalogId' - The ID of the Data Catalog where the partitions in question reside. If none is provided, the AWS account ID is used by default.
--
-- * 'gpMaxResults' - The maximum number of partitions to return in a single response.
--
-- * 'gpSegment' - The segment of the table's partitions to scan in this request.
--
-- * 'gpExcludeColumnSchema' - Undocumented member.
--
-- * 'gpExpression' - An expression that filters the partitions to be returned. The expression uses SQL syntax similar to the SQL @WHERE@ filter clause. The SQL statement parser <http://jsqlparser.sourceforge.net/home.php JSQLParser> parses the expression.  /Operators/ : The following are the operators that you can use in the @Expression@ API call:     * =    * Checks whether the values of the two operands are equal; if yes, then the condition becomes true. Example: Assume 'variable a' holds 10 and 'variable b' holds 20.  (a = b) is not true.     * < >    * Checks whether the values of two operands are equal; if the values are not equal, then the condition becomes true. Example: (a < > b) is true.     * >    * Checks whether the value of the left operand is greater than the value of the right operand; if yes, then the condition becomes true. Example: (a > b) is not true.     * <    * Checks whether the value of the left operand is less than the value of the right operand; if yes, then the condition becomes true. Example: (a < b) is true.     * >=    * Checks whether the value of the left operand is greater than or equal to the value of the right operand; if yes, then the condition becomes true. Example: (a >= b) is not true.     * <=    * Checks whether the value of the left operand is less than or equal to the value of the right operand; if yes, then the condition becomes true. Example: (a <= b) is true.     * AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL    * Logical operators. /Supported Partition Key Types/ : The following are the supported partition keys.     * @string@      * @date@      * @timestamp@      * @int@      * @bigint@      * @long@      * @tinyint@      * @smallint@      * @decimal@  If an invalid type is encountered, an exception is thrown.  The following list shows the valid operators on each type. When you define a crawler, the @partitionKey@ type is created as a @STRING@ , to be compatible with the catalog partitions.  /Sample API Call/ :
--
-- * 'gpDatabaseName' - The name of the catalog database where the partitions reside.
--
-- * 'gpTableName' - The name of the partitions' table.
getPartitions ::
  -- | 'gpDatabaseName'
  Text ->
  -- | 'gpTableName'
  Text ->
  GetPartitions
getPartitions pDatabaseName_ pTableName_ =
  GetPartitions'
    { _gpNextToken = Nothing,
      _gpCatalogId = Nothing,
      _gpMaxResults = Nothing,
      _gpSegment = Nothing,
      _gpExcludeColumnSchema = Nothing,
      _gpExpression = Nothing,
      _gpDatabaseName = pDatabaseName_,
      _gpTableName = pTableName_
    }

-- | A continuation token, if this is not the first call to retrieve these partitions.
gpNextToken :: Lens' GetPartitions (Maybe Text)
gpNextToken = lens _gpNextToken (\s a -> s {_gpNextToken = a})

-- | The ID of the Data Catalog where the partitions in question reside. If none is provided, the AWS account ID is used by default.
gpCatalogId :: Lens' GetPartitions (Maybe Text)
gpCatalogId = lens _gpCatalogId (\s a -> s {_gpCatalogId = a})

-- | The maximum number of partitions to return in a single response.
gpMaxResults :: Lens' GetPartitions (Maybe Natural)
gpMaxResults = lens _gpMaxResults (\s a -> s {_gpMaxResults = a}) . mapping _Nat

-- | The segment of the table's partitions to scan in this request.
gpSegment :: Lens' GetPartitions (Maybe Segment)
gpSegment = lens _gpSegment (\s a -> s {_gpSegment = a})

-- | Undocumented member.
gpExcludeColumnSchema :: Lens' GetPartitions (Maybe Bool)
gpExcludeColumnSchema = lens _gpExcludeColumnSchema (\s a -> s {_gpExcludeColumnSchema = a})

-- | An expression that filters the partitions to be returned. The expression uses SQL syntax similar to the SQL @WHERE@ filter clause. The SQL statement parser <http://jsqlparser.sourceforge.net/home.php JSQLParser> parses the expression.  /Operators/ : The following are the operators that you can use in the @Expression@ API call:     * =    * Checks whether the values of the two operands are equal; if yes, then the condition becomes true. Example: Assume 'variable a' holds 10 and 'variable b' holds 20.  (a = b) is not true.     * < >    * Checks whether the values of two operands are equal; if the values are not equal, then the condition becomes true. Example: (a < > b) is true.     * >    * Checks whether the value of the left operand is greater than the value of the right operand; if yes, then the condition becomes true. Example: (a > b) is not true.     * <    * Checks whether the value of the left operand is less than the value of the right operand; if yes, then the condition becomes true. Example: (a < b) is true.     * >=    * Checks whether the value of the left operand is greater than or equal to the value of the right operand; if yes, then the condition becomes true. Example: (a >= b) is not true.     * <=    * Checks whether the value of the left operand is less than or equal to the value of the right operand; if yes, then the condition becomes true. Example: (a <= b) is true.     * AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL    * Logical operators. /Supported Partition Key Types/ : The following are the supported partition keys.     * @string@      * @date@      * @timestamp@      * @int@      * @bigint@      * @long@      * @tinyint@      * @smallint@      * @decimal@  If an invalid type is encountered, an exception is thrown.  The following list shows the valid operators on each type. When you define a crawler, the @partitionKey@ type is created as a @STRING@ , to be compatible with the catalog partitions.  /Sample API Call/ :
gpExpression :: Lens' GetPartitions (Maybe Text)
gpExpression = lens _gpExpression (\s a -> s {_gpExpression = a})

-- | The name of the catalog database where the partitions reside.
gpDatabaseName :: Lens' GetPartitions Text
gpDatabaseName = lens _gpDatabaseName (\s a -> s {_gpDatabaseName = a})

-- | The name of the partitions' table.
gpTableName :: Lens' GetPartitions Text
gpTableName = lens _gpTableName (\s a -> s {_gpTableName = a})

instance AWSPager GetPartitions where
  page rq rs
    | stop (rs ^. grsNextToken) = Nothing
    | stop (rs ^. grsPartitions) = Nothing
    | otherwise =
      Just $ rq & gpNextToken .~ rs ^. grsNextToken

instance AWSRequest GetPartitions where
  type Rs GetPartitions = GetPartitionsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetPartitionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Partitions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetPartitions

instance NFData GetPartitions

instance ToHeaders GetPartitions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetPartitions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPartitions where
  toJSON GetPartitions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gpNextToken,
            ("CatalogId" .=) <$> _gpCatalogId,
            ("MaxResults" .=) <$> _gpMaxResults,
            ("Segment" .=) <$> _gpSegment,
            ("ExcludeColumnSchema" .=)
              <$> _gpExcludeColumnSchema,
            ("Expression" .=) <$> _gpExpression,
            Just ("DatabaseName" .= _gpDatabaseName),
            Just ("TableName" .= _gpTableName)
          ]
      )

instance ToPath GetPartitions where
  toPath = const "/"

instance ToQuery GetPartitions where
  toQuery = const mempty

-- | /See:/ 'getPartitionsResponse' smart constructor.
data GetPartitionsResponse = GetPartitionsResponse'
  { _grsNextToken ::
      !(Maybe Text),
    _grsPartitions ::
      !(Maybe [Partition]),
    _grsResponseStatus :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetPartitionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsNextToken' - A continuation token, if the returned list of partitions does not include the last one.
--
-- * 'grsPartitions' - A list of requested partitions.
--
-- * 'grsResponseStatus' - -- | The response status code.
getPartitionsResponse ::
  -- | 'grsResponseStatus'
  Int ->
  GetPartitionsResponse
getPartitionsResponse pResponseStatus_ =
  GetPartitionsResponse'
    { _grsNextToken = Nothing,
      _grsPartitions = Nothing,
      _grsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if the returned list of partitions does not include the last one.
grsNextToken :: Lens' GetPartitionsResponse (Maybe Text)
grsNextToken = lens _grsNextToken (\s a -> s {_grsNextToken = a})

-- | A list of requested partitions.
grsPartitions :: Lens' GetPartitionsResponse [Partition]
grsPartitions = lens _grsPartitions (\s a -> s {_grsPartitions = a}) . _Default . _Coerce

-- | -- | The response status code.
grsResponseStatus :: Lens' GetPartitionsResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

instance NFData GetPartitionsResponse
