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
-- Module      : Network.AWS.CloudSearch.DeleteAnalysisScheme
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an analysis scheme. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html Configuring Analysis Schemes> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DeleteAnalysisScheme
  ( -- * Creating a Request
    deleteAnalysisScheme,
    DeleteAnalysisScheme,

    -- * Request Lenses
    dasaDomainName,
    dasaAnalysisSchemeName,

    -- * Destructuring the Response
    deleteAnalysisSchemeResponse,
    DeleteAnalysisSchemeResponse,

    -- * Response Lenses
    dasrrsResponseStatus,
    dasrrsAnalysisScheme,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DeleteAnalysisScheme' @ operation. Specifies the name of the domain you want to update and the analysis scheme you want to delete.
--
--
--
-- /See:/ 'deleteAnalysisScheme' smart constructor.
data DeleteAnalysisScheme = DeleteAnalysisScheme'
  { _dasaDomainName ::
      !Text,
    _dasaAnalysisSchemeName ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteAnalysisScheme' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasaDomainName' - Undocumented member.
--
-- * 'dasaAnalysisSchemeName' - The name of the analysis scheme you want to delete.
deleteAnalysisScheme ::
  -- | 'dasaDomainName'
  Text ->
  -- | 'dasaAnalysisSchemeName'
  Text ->
  DeleteAnalysisScheme
deleteAnalysisScheme
  pDomainName_
  pAnalysisSchemeName_ =
    DeleteAnalysisScheme'
      { _dasaDomainName =
          pDomainName_,
        _dasaAnalysisSchemeName = pAnalysisSchemeName_
      }

-- | Undocumented member.
dasaDomainName :: Lens' DeleteAnalysisScheme Text
dasaDomainName = lens _dasaDomainName (\s a -> s {_dasaDomainName = a})

-- | The name of the analysis scheme you want to delete.
dasaAnalysisSchemeName :: Lens' DeleteAnalysisScheme Text
dasaAnalysisSchemeName = lens _dasaAnalysisSchemeName (\s a -> s {_dasaAnalysisSchemeName = a})

instance AWSRequest DeleteAnalysisScheme where
  type
    Rs DeleteAnalysisScheme =
      DeleteAnalysisSchemeResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DeleteAnalysisSchemeResult"
      ( \s h x ->
          DeleteAnalysisSchemeResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "AnalysisScheme")
      )

instance Hashable DeleteAnalysisScheme

instance NFData DeleteAnalysisScheme

instance ToHeaders DeleteAnalysisScheme where
  toHeaders = const mempty

instance ToPath DeleteAnalysisScheme where
  toPath = const "/"

instance ToQuery DeleteAnalysisScheme where
  toQuery DeleteAnalysisScheme' {..} =
    mconcat
      [ "Action" =: ("DeleteAnalysisScheme" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _dasaDomainName,
        "AnalysisSchemeName" =: _dasaAnalysisSchemeName
      ]

-- | The result of a @DeleteAnalysisScheme@ request. Contains the status of the deleted analysis scheme.
--
--
--
-- /See:/ 'deleteAnalysisSchemeResponse' smart constructor.
data DeleteAnalysisSchemeResponse = DeleteAnalysisSchemeResponse'
  { _dasrrsResponseStatus ::
      !Int,
    _dasrrsAnalysisScheme ::
      !AnalysisSchemeStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteAnalysisSchemeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasrrsResponseStatus' - -- | The response status code.
--
-- * 'dasrrsAnalysisScheme' - The status of the analysis scheme being deleted.
deleteAnalysisSchemeResponse ::
  -- | 'dasrrsResponseStatus'
  Int ->
  -- | 'dasrrsAnalysisScheme'
  AnalysisSchemeStatus ->
  DeleteAnalysisSchemeResponse
deleteAnalysisSchemeResponse
  pResponseStatus_
  pAnalysisScheme_ =
    DeleteAnalysisSchemeResponse'
      { _dasrrsResponseStatus =
          pResponseStatus_,
        _dasrrsAnalysisScheme = pAnalysisScheme_
      }

-- | -- | The response status code.
dasrrsResponseStatus :: Lens' DeleteAnalysisSchemeResponse Int
dasrrsResponseStatus = lens _dasrrsResponseStatus (\s a -> s {_dasrrsResponseStatus = a})

-- | The status of the analysis scheme being deleted.
dasrrsAnalysisScheme :: Lens' DeleteAnalysisSchemeResponse AnalysisSchemeStatus
dasrrsAnalysisScheme = lens _dasrrsAnalysisScheme (\s a -> s {_dasrrsAnalysisScheme = a})

instance NFData DeleteAnalysisSchemeResponse
