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
-- Module      : Network.AWS.ElasticSearch.DescribeDomainAutoTunes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides scheduled Auto-Tune action details for the Elasticsearch domain, such as Auto-Tune action type, description, severity, and scheduled date.
module Network.AWS.ElasticSearch.DescribeDomainAutoTunes
  ( -- * Creating a Request
    describeDomainAutoTunes,
    DescribeDomainAutoTunes,

    -- * Request Lenses
    ddatNextToken,
    ddatMaxResults,
    ddatDomainName,

    -- * Destructuring the Response
    describeDomainAutoTunesResponse,
    DescribeDomainAutoTunesResponse,

    -- * Response Lenses
    ddatrrsNextToken,
    ddatrrsAutoTunes,
    ddatrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @DescribeDomainAutoTunes@ operation.
--
--
--
-- /See:/ 'describeDomainAutoTunes' smart constructor.
data DescribeDomainAutoTunes = DescribeDomainAutoTunes'
  { _ddatNextToken ::
      !(Maybe Text),
    _ddatMaxResults ::
      !(Maybe Int),
    _ddatDomainName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDomainAutoTunes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddatNextToken' - NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.
--
-- * 'ddatMaxResults' - Set this value to limit the number of results returned. If not specified, defaults to 100.
--
-- * 'ddatDomainName' - Specifies the domain name for which you want Auto-Tune action details.
describeDomainAutoTunes ::
  -- | 'ddatDomainName'
  Text ->
  DescribeDomainAutoTunes
describeDomainAutoTunes pDomainName_ =
  DescribeDomainAutoTunes'
    { _ddatNextToken = Nothing,
      _ddatMaxResults = Nothing,
      _ddatDomainName = pDomainName_
    }

-- | NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.
ddatNextToken :: Lens' DescribeDomainAutoTunes (Maybe Text)
ddatNextToken = lens _ddatNextToken (\s a -> s {_ddatNextToken = a})

-- | Set this value to limit the number of results returned. If not specified, defaults to 100.
ddatMaxResults :: Lens' DescribeDomainAutoTunes (Maybe Int)
ddatMaxResults = lens _ddatMaxResults (\s a -> s {_ddatMaxResults = a})

-- | Specifies the domain name for which you want Auto-Tune action details.
ddatDomainName :: Lens' DescribeDomainAutoTunes Text
ddatDomainName = lens _ddatDomainName (\s a -> s {_ddatDomainName = a})

instance AWSRequest DescribeDomainAutoTunes where
  type
    Rs DescribeDomainAutoTunes =
      DescribeDomainAutoTunesResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DescribeDomainAutoTunesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AutoTunes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDomainAutoTunes

instance NFData DescribeDomainAutoTunes

instance ToHeaders DescribeDomainAutoTunes where
  toHeaders = const mempty

instance ToPath DescribeDomainAutoTunes where
  toPath DescribeDomainAutoTunes' {..} =
    mconcat
      [ "/2015-01-01/es/domain/",
        toBS _ddatDomainName,
        "/autoTunes"
      ]

instance ToQuery DescribeDomainAutoTunes where
  toQuery = const mempty

-- | The result of @DescribeDomainAutoTunes@ request. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
--
--
--
-- /See:/ 'describeDomainAutoTunesResponse' smart constructor.
data DescribeDomainAutoTunesResponse = DescribeDomainAutoTunesResponse'
  { _ddatrrsNextToken ::
      !( Maybe
           Text
       ),
    _ddatrrsAutoTunes ::
      !( Maybe
           [AutoTune]
       ),
    _ddatrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDomainAutoTunesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddatrrsNextToken' - Specifies an identifier to allow retrieval of paginated results.
--
-- * 'ddatrrsAutoTunes' - Specifies the list of setting adjustments that Auto-Tune has made to the domain. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
--
-- * 'ddatrrsResponseStatus' - -- | The response status code.
describeDomainAutoTunesResponse ::
  -- | 'ddatrrsResponseStatus'
  Int ->
  DescribeDomainAutoTunesResponse
describeDomainAutoTunesResponse pResponseStatus_ =
  DescribeDomainAutoTunesResponse'
    { _ddatrrsNextToken =
        Nothing,
      _ddatrrsAutoTunes = Nothing,
      _ddatrrsResponseStatus = pResponseStatus_
    }

-- | Specifies an identifier to allow retrieval of paginated results.
ddatrrsNextToken :: Lens' DescribeDomainAutoTunesResponse (Maybe Text)
ddatrrsNextToken = lens _ddatrrsNextToken (\s a -> s {_ddatrrsNextToken = a})

-- | Specifies the list of setting adjustments that Auto-Tune has made to the domain. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
ddatrrsAutoTunes :: Lens' DescribeDomainAutoTunesResponse [AutoTune]
ddatrrsAutoTunes = lens _ddatrrsAutoTunes (\s a -> s {_ddatrrsAutoTunes = a}) . _Default . _Coerce

-- | -- | The response status code.
ddatrrsResponseStatus :: Lens' DescribeDomainAutoTunesResponse Int
ddatrrsResponseStatus = lens _ddatrrsResponseStatus (\s a -> s {_ddatrrsResponseStatus = a})

instance NFData DescribeDomainAutoTunesResponse
