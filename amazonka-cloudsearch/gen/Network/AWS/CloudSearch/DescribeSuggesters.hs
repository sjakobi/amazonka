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
-- Module      : Network.AWS.CloudSearch.DescribeSuggesters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the @Deployed@ option to @true@ to show the active configuration and exclude pending changes. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html Getting Search Suggestions> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DescribeSuggesters
  ( -- * Creating a Request
    describeSuggesters,
    DescribeSuggesters,

    -- * Request Lenses
    deseDeployed,
    deseSuggesterNames,
    deseDomainName,

    -- * Destructuring the Response
    describeSuggestersResponse,
    DescribeSuggestersResponse,

    -- * Response Lenses
    drsResponseStatus,
    drsSuggesters,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DescribeSuggester' @ operation. Specifies the name of the domain you want to describe. To restrict the response to particular suggesters, specify the names of the suggesters you want to describe. To show the active configuration and exclude any pending changes, set the @Deployed@ option to @true@ .
--
--
--
-- /See:/ 'describeSuggesters' smart constructor.
data DescribeSuggesters = DescribeSuggesters'
  { _deseDeployed ::
      !(Maybe Bool),
    _deseSuggesterNames ::
      !(Maybe [Text]),
    _deseDomainName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeSuggesters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deseDeployed' - Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
--
-- * 'deseSuggesterNames' - The suggesters you want to describe.
--
-- * 'deseDomainName' - The name of the domain you want to describe.
describeSuggesters ::
  -- | 'deseDomainName'
  Text ->
  DescribeSuggesters
describeSuggesters pDomainName_ =
  DescribeSuggesters'
    { _deseDeployed = Nothing,
      _deseSuggesterNames = Nothing,
      _deseDomainName = pDomainName_
    }

-- | Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
deseDeployed :: Lens' DescribeSuggesters (Maybe Bool)
deseDeployed = lens _deseDeployed (\s a -> s {_deseDeployed = a})

-- | The suggesters you want to describe.
deseSuggesterNames :: Lens' DescribeSuggesters [Text]
deseSuggesterNames = lens _deseSuggesterNames (\s a -> s {_deseSuggesterNames = a}) . _Default . _Coerce

-- | The name of the domain you want to describe.
deseDomainName :: Lens' DescribeSuggesters Text
deseDomainName = lens _deseDomainName (\s a -> s {_deseDomainName = a})

instance AWSRequest DescribeSuggesters where
  type
    Rs DescribeSuggesters =
      DescribeSuggestersResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DescribeSuggestersResult"
      ( \s h x ->
          DescribeSuggestersResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "Suggesters" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable DescribeSuggesters

instance NFData DescribeSuggesters

instance ToHeaders DescribeSuggesters where
  toHeaders = const mempty

instance ToPath DescribeSuggesters where
  toPath = const "/"

instance ToQuery DescribeSuggesters where
  toQuery DescribeSuggesters' {..} =
    mconcat
      [ "Action" =: ("DescribeSuggesters" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "Deployed" =: _deseDeployed,
        "SuggesterNames"
          =: toQuery
            (toQueryList "member" <$> _deseSuggesterNames),
        "DomainName" =: _deseDomainName
      ]

-- | The result of a @DescribeSuggesters@ request.
--
--
--
-- /See:/ 'describeSuggestersResponse' smart constructor.
data DescribeSuggestersResponse = DescribeSuggestersResponse'
  { _drsResponseStatus ::
      !Int,
    _drsSuggesters ::
      ![SuggesterStatus]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSuggestersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
--
-- * 'drsSuggesters' - The suggesters configured for the domain specified in the request.
describeSuggestersResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeSuggestersResponse
describeSuggestersResponse pResponseStatus_ =
  DescribeSuggestersResponse'
    { _drsResponseStatus =
        pResponseStatus_,
      _drsSuggesters = mempty
    }

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeSuggestersResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

-- | The suggesters configured for the domain specified in the request.
drsSuggesters :: Lens' DescribeSuggestersResponse [SuggesterStatus]
drsSuggesters = lens _drsSuggesters (\s a -> s {_drsSuggesters = a}) . _Coerce

instance NFData DescribeSuggestersResponse
