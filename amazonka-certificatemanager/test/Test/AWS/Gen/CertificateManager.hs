{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CertificateManager
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CertificateManager where

import Data.Proxy
import Network.AWS.CertificateManager
import Test.AWS.CertificateManager.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetAccountConfiguration $
--             getAccountConfiguration
--
--         , requestDeleteCertificate $
--             deleteCertificate
--
--         , requestUpdateCertificateOptions $
--             updateCertificateOptions
--
--         , requestRemoveTagsFromCertificate $
--             removeTagsFromCertificate
--
--         , requestExportCertificate $
--             exportCertificate
--
--         , requestRenewCertificate $
--             renewCertificate
--
--         , requestGetCertificate $
--             getCertificate
--
--         , requestDescribeCertificate $
--             describeCertificate
--
--         , requestPutAccountConfiguration $
--             putAccountConfiguration
--
--         , requestImportCertificate $
--             importCertificate
--
--         , requestListCertificates $
--             listCertificates
--
--         , requestRequestCertificate $
--             requestCertificate
--
--         , requestResendValidationEmail $
--             resendValidationEmail
--
--         , requestAddTagsToCertificate $
--             addTagsToCertificate
--
--         , requestListTagsForCertificate $
--             listTagsForCertificate
--
--           ]

--     , testGroup "response"
--         [ responseGetAccountConfiguration $
--             getAccountConfigurationResponse
--
--         , responseDeleteCertificate $
--             deleteCertificateResponse
--
--         , responseUpdateCertificateOptions $
--             updateCertificateOptionsResponse
--
--         , responseRemoveTagsFromCertificate $
--             removeTagsFromCertificateResponse
--
--         , responseExportCertificate $
--             exportCertificateResponse
--
--         , responseRenewCertificate $
--             renewCertificateResponse
--
--         , responseGetCertificate $
--             getCertificateResponse
--
--         , responseDescribeCertificate $
--             describeCertificateResponse
--
--         , responsePutAccountConfiguration $
--             putAccountConfigurationResponse
--
--         , responseImportCertificate $
--             importCertificateResponse
--
--         , responseListCertificates $
--             listCertificatesResponse
--
--         , responseRequestCertificate $
--             requestCertificateResponse
--
--         , responseResendValidationEmail $
--             resendValidationEmailResponse
--
--         , responseAddTagsToCertificate $
--             addTagsToCertificateResponse
--
--         , responseListTagsForCertificate $
--             listTagsForCertificateResponse
--
--           ]
--     ]

-- Requests

requestGetAccountConfiguration :: GetAccountConfiguration -> TestTree
requestGetAccountConfiguration =
  req
    "GetAccountConfiguration"
    "fixture/GetAccountConfiguration.yaml"

requestDeleteCertificate :: DeleteCertificate -> TestTree
requestDeleteCertificate =
  req
    "DeleteCertificate"
    "fixture/DeleteCertificate.yaml"

requestUpdateCertificateOptions :: UpdateCertificateOptions -> TestTree
requestUpdateCertificateOptions =
  req
    "UpdateCertificateOptions"
    "fixture/UpdateCertificateOptions.yaml"

requestRemoveTagsFromCertificate :: RemoveTagsFromCertificate -> TestTree
requestRemoveTagsFromCertificate =
  req
    "RemoveTagsFromCertificate"
    "fixture/RemoveTagsFromCertificate.yaml"

requestExportCertificate :: ExportCertificate -> TestTree
requestExportCertificate =
  req
    "ExportCertificate"
    "fixture/ExportCertificate.yaml"

requestRenewCertificate :: RenewCertificate -> TestTree
requestRenewCertificate =
  req
    "RenewCertificate"
    "fixture/RenewCertificate.yaml"

requestGetCertificate :: GetCertificate -> TestTree
requestGetCertificate =
  req
    "GetCertificate"
    "fixture/GetCertificate.yaml"

requestDescribeCertificate :: DescribeCertificate -> TestTree
requestDescribeCertificate =
  req
    "DescribeCertificate"
    "fixture/DescribeCertificate.yaml"

requestPutAccountConfiguration :: PutAccountConfiguration -> TestTree
requestPutAccountConfiguration =
  req
    "PutAccountConfiguration"
    "fixture/PutAccountConfiguration.yaml"

requestImportCertificate :: ImportCertificate -> TestTree
requestImportCertificate =
  req
    "ImportCertificate"
    "fixture/ImportCertificate.yaml"

requestListCertificates :: ListCertificates -> TestTree
requestListCertificates =
  req
    "ListCertificates"
    "fixture/ListCertificates.yaml"

requestRequestCertificate :: RequestCertificate -> TestTree
requestRequestCertificate =
  req
    "RequestCertificate"
    "fixture/RequestCertificate.yaml"

requestResendValidationEmail :: ResendValidationEmail -> TestTree
requestResendValidationEmail =
  req
    "ResendValidationEmail"
    "fixture/ResendValidationEmail.yaml"

requestAddTagsToCertificate :: AddTagsToCertificate -> TestTree
requestAddTagsToCertificate =
  req
    "AddTagsToCertificate"
    "fixture/AddTagsToCertificate.yaml"

requestListTagsForCertificate :: ListTagsForCertificate -> TestTree
requestListTagsForCertificate =
  req
    "ListTagsForCertificate"
    "fixture/ListTagsForCertificate.yaml"

-- Responses

responseGetAccountConfiguration :: GetAccountConfigurationResponse -> TestTree
responseGetAccountConfiguration =
  res
    "GetAccountConfigurationResponse"
    "fixture/GetAccountConfigurationResponse.proto"
    certificateManager
    (Proxy :: Proxy GetAccountConfiguration)

responseDeleteCertificate :: DeleteCertificateResponse -> TestTree
responseDeleteCertificate =
  res
    "DeleteCertificateResponse"
    "fixture/DeleteCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy DeleteCertificate)

responseUpdateCertificateOptions :: UpdateCertificateOptionsResponse -> TestTree
responseUpdateCertificateOptions =
  res
    "UpdateCertificateOptionsResponse"
    "fixture/UpdateCertificateOptionsResponse.proto"
    certificateManager
    (Proxy :: Proxy UpdateCertificateOptions)

responseRemoveTagsFromCertificate :: RemoveTagsFromCertificateResponse -> TestTree
responseRemoveTagsFromCertificate =
  res
    "RemoveTagsFromCertificateResponse"
    "fixture/RemoveTagsFromCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy RemoveTagsFromCertificate)

responseExportCertificate :: ExportCertificateResponse -> TestTree
responseExportCertificate =
  res
    "ExportCertificateResponse"
    "fixture/ExportCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy ExportCertificate)

responseRenewCertificate :: RenewCertificateResponse -> TestTree
responseRenewCertificate =
  res
    "RenewCertificateResponse"
    "fixture/RenewCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy RenewCertificate)

responseGetCertificate :: GetCertificateResponse -> TestTree
responseGetCertificate =
  res
    "GetCertificateResponse"
    "fixture/GetCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy GetCertificate)

responseDescribeCertificate :: DescribeCertificateResponse -> TestTree
responseDescribeCertificate =
  res
    "DescribeCertificateResponse"
    "fixture/DescribeCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy DescribeCertificate)

responsePutAccountConfiguration :: PutAccountConfigurationResponse -> TestTree
responsePutAccountConfiguration =
  res
    "PutAccountConfigurationResponse"
    "fixture/PutAccountConfigurationResponse.proto"
    certificateManager
    (Proxy :: Proxy PutAccountConfiguration)

responseImportCertificate :: ImportCertificateResponse -> TestTree
responseImportCertificate =
  res
    "ImportCertificateResponse"
    "fixture/ImportCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy ImportCertificate)

responseListCertificates :: ListCertificatesResponse -> TestTree
responseListCertificates =
  res
    "ListCertificatesResponse"
    "fixture/ListCertificatesResponse.proto"
    certificateManager
    (Proxy :: Proxy ListCertificates)

responseRequestCertificate :: RequestCertificateResponse -> TestTree
responseRequestCertificate =
  res
    "RequestCertificateResponse"
    "fixture/RequestCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy RequestCertificate)

responseResendValidationEmail :: ResendValidationEmailResponse -> TestTree
responseResendValidationEmail =
  res
    "ResendValidationEmailResponse"
    "fixture/ResendValidationEmailResponse.proto"
    certificateManager
    (Proxy :: Proxy ResendValidationEmail)

responseAddTagsToCertificate :: AddTagsToCertificateResponse -> TestTree
responseAddTagsToCertificate =
  res
    "AddTagsToCertificateResponse"
    "fixture/AddTagsToCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy AddTagsToCertificate)

responseListTagsForCertificate :: ListTagsForCertificateResponse -> TestTree
responseListTagsForCertificate =
  res
    "ListTagsForCertificateResponse"
    "fixture/ListTagsForCertificateResponse.proto"
    certificateManager
    (Proxy :: Proxy ListTagsForCertificate)
