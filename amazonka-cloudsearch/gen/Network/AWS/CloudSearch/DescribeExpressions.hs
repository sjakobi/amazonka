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
-- Module      : Network.AWS.CloudSearch.DescribeExpressions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the @Deployed@ option to @true@ to show the active configuration and exclude pending changes. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html Configuring Expressions> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DescribeExpressions
  ( -- * Creating a Request
    describeExpressions,
    DescribeExpressions,

    -- * Request Lenses
    desDeployed,
    desExpressionNames,
    desDomainName,

    -- * Destructuring the Response
    describeExpressionsResponse,
    DescribeExpressionsResponse,

    -- * Response Lenses
    desrsResponseStatus,
    desrsExpressions,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DescribeDomains' @ operation. Specifies the name of the domain you want to describe. To restrict the response to particular expressions, specify the names of the expressions you want to describe. To show the active configuration and exclude any pending changes, set the @Deployed@ option to @true@ .
--
--
--
-- /See:/ 'describeExpressions' smart constructor.
data DescribeExpressions = DescribeExpressions'
  { _desDeployed ::
      !(Maybe Bool),
    _desExpressionNames ::
      !(Maybe [Text]),
    _desDomainName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExpressions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desDeployed' - Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
--
-- * 'desExpressionNames' - Limits the @'DescribeExpressions' @ response to the specified expressions. If not specified, all expressions are shown.
--
-- * 'desDomainName' - The name of the domain you want to describe.
describeExpressions ::
  -- | 'desDomainName'
  Text ->
  DescribeExpressions
describeExpressions pDomainName_ =
  DescribeExpressions'
    { _desDeployed = Nothing,
      _desExpressionNames = Nothing,
      _desDomainName = pDomainName_
    }

-- | Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
desDeployed :: Lens' DescribeExpressions (Maybe Bool)
desDeployed = lens _desDeployed (\s a -> s {_desDeployed = a})

-- | Limits the @'DescribeExpressions' @ response to the specified expressions. If not specified, all expressions are shown.
desExpressionNames :: Lens' DescribeExpressions [Text]
desExpressionNames = lens _desExpressionNames (\s a -> s {_desExpressionNames = a}) . _Default . _Coerce

-- | The name of the domain you want to describe.
desDomainName :: Lens' DescribeExpressions Text
desDomainName = lens _desDomainName (\s a -> s {_desDomainName = a})

instance AWSRequest DescribeExpressions where
  type
    Rs DescribeExpressions =
      DescribeExpressionsResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DescribeExpressionsResult"
      ( \s h x ->
          DescribeExpressionsResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "Expressions" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable DescribeExpressions

instance NFData DescribeExpressions

instance ToHeaders DescribeExpressions where
  toHeaders = const mempty

instance ToPath DescribeExpressions where
  toPath = const "/"

instance ToQuery DescribeExpressions where
  toQuery DescribeExpressions' {..} =
    mconcat
      [ "Action" =: ("DescribeExpressions" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "Deployed" =: _desDeployed,
        "ExpressionNames"
          =: toQuery
            (toQueryList "member" <$> _desExpressionNames),
        "DomainName" =: _desDomainName
      ]

-- | The result of a @DescribeExpressions@ request. Contains the expressions configured for the domain specified in the request.
--
--
--
-- /See:/ 'describeExpressionsResponse' smart constructor.
data DescribeExpressionsResponse = DescribeExpressionsResponse'
  { _desrsResponseStatus ::
      !Int,
    _desrsExpressions ::
      ![ExpressionStatus]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeExpressionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsResponseStatus' - -- | The response status code.
--
-- * 'desrsExpressions' - The expressions configured for the domain.
describeExpressionsResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeExpressionsResponse
describeExpressionsResponse pResponseStatus_ =
  DescribeExpressionsResponse'
    { _desrsResponseStatus =
        pResponseStatus_,
      _desrsExpressions = mempty
    }

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeExpressionsResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

-- | The expressions configured for the domain.
desrsExpressions :: Lens' DescribeExpressionsResponse [ExpressionStatus]
desrsExpressions = lens _desrsExpressions (\s a -> s {_desrsExpressions = a}) . _Coerce

instance NFData DescribeExpressionsResponse
