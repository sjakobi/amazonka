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
-- Module      : Network.AWS.CloudSearch.DescribeIndexFields
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the @Deployed@ option to @true@ to show the active configuration and exclude pending changes. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html Getting Domain Information> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DescribeIndexFields
  ( -- * Creating a Request
    describeIndexFields,
    DescribeIndexFields,

    -- * Request Lenses
    difsDeployed,
    difsFieldNames,
    difsDomainName,

    -- * Destructuring the Response
    describeIndexFieldsResponse,
    DescribeIndexFieldsResponse,

    -- * Response Lenses
    difrrsResponseStatus,
    difrrsIndexFields,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DescribeIndexFields' @ operation. Specifies the name of the domain you want to describe. To restrict the response to particular index fields, specify the names of the index fields you want to describe. To show the active configuration and exclude any pending changes, set the @Deployed@ option to @true@ .
--
--
--
-- /See:/ 'describeIndexFields' smart constructor.
data DescribeIndexFields = DescribeIndexFields'
  { _difsDeployed ::
      !(Maybe Bool),
    _difsFieldNames ::
      !(Maybe [Text]),
    _difsDomainName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeIndexFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'difsDeployed' - Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
--
-- * 'difsFieldNames' - A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.
--
-- * 'difsDomainName' - The name of the domain you want to describe.
describeIndexFields ::
  -- | 'difsDomainName'
  Text ->
  DescribeIndexFields
describeIndexFields pDomainName_ =
  DescribeIndexFields'
    { _difsDeployed = Nothing,
      _difsFieldNames = Nothing,
      _difsDomainName = pDomainName_
    }

-- | Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
difsDeployed :: Lens' DescribeIndexFields (Maybe Bool)
difsDeployed = lens _difsDeployed (\s a -> s {_difsDeployed = a})

-- | A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.
difsFieldNames :: Lens' DescribeIndexFields [Text]
difsFieldNames = lens _difsFieldNames (\s a -> s {_difsFieldNames = a}) . _Default . _Coerce

-- | The name of the domain you want to describe.
difsDomainName :: Lens' DescribeIndexFields Text
difsDomainName = lens _difsDomainName (\s a -> s {_difsDomainName = a})

instance AWSRequest DescribeIndexFields where
  type
    Rs DescribeIndexFields =
      DescribeIndexFieldsResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DescribeIndexFieldsResult"
      ( \s h x ->
          DescribeIndexFieldsResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "IndexFields" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable DescribeIndexFields

instance NFData DescribeIndexFields

instance ToHeaders DescribeIndexFields where
  toHeaders = const mempty

instance ToPath DescribeIndexFields where
  toPath = const "/"

instance ToQuery DescribeIndexFields where
  toQuery DescribeIndexFields' {..} =
    mconcat
      [ "Action" =: ("DescribeIndexFields" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "Deployed" =: _difsDeployed,
        "FieldNames"
          =: toQuery (toQueryList "member" <$> _difsFieldNames),
        "DomainName" =: _difsDomainName
      ]

-- | The result of a @DescribeIndexFields@ request. Contains the index fields configured for the domain specified in the request.
--
--
--
-- /See:/ 'describeIndexFieldsResponse' smart constructor.
data DescribeIndexFieldsResponse = DescribeIndexFieldsResponse'
  { _difrrsResponseStatus ::
      !Int,
    _difrrsIndexFields ::
      ![IndexFieldStatus]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeIndexFieldsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'difrrsResponseStatus' - -- | The response status code.
--
-- * 'difrrsIndexFields' - The index fields configured for the domain.
describeIndexFieldsResponse ::
  -- | 'difrrsResponseStatus'
  Int ->
  DescribeIndexFieldsResponse
describeIndexFieldsResponse pResponseStatus_ =
  DescribeIndexFieldsResponse'
    { _difrrsResponseStatus =
        pResponseStatus_,
      _difrrsIndexFields = mempty
    }

-- | -- | The response status code.
difrrsResponseStatus :: Lens' DescribeIndexFieldsResponse Int
difrrsResponseStatus = lens _difrrsResponseStatus (\s a -> s {_difrrsResponseStatus = a})

-- | The index fields configured for the domain.
difrrsIndexFields :: Lens' DescribeIndexFieldsResponse [IndexFieldStatus]
difrrsIndexFields = lens _difrrsIndexFields (\s a -> s {_difrrsIndexFields = a}) . _Coerce

instance NFData DescribeIndexFieldsResponse
