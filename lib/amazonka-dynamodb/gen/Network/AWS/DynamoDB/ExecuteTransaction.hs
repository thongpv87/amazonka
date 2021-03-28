{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.ExecuteTransaction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation allows you to perform transactional reads or writes on data stored in DynamoDB, using PartiQL. 
module Network.AWS.DynamoDB.ExecuteTransaction
    (
    -- * Creating a request
      ExecuteTransaction (..)
    , mkExecuteTransaction
    -- ** Request lenses
    , etTransactStatements
    , etClientRequestToken

    -- * Destructuring the response
    , ExecuteTransactionResponse (..)
    , mkExecuteTransactionResponse
    -- ** Response lenses
    , etrrsResponses
    , etrrsResponseStatus
    ) where

import qualified Network.AWS.DynamoDB.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkExecuteTransaction' smart constructor.
data ExecuteTransaction = ExecuteTransaction'
  { transactStatements :: Core.NonEmpty Types.ParameterizedStatement
    -- ^ The list of PartiQL statements representing the transaction to run. 
  , clientRequestToken :: Core.Maybe Types.ClientRequestToken
    -- ^ Set this value to get remaining results, if @NextToken@ was returned in the statement response. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ExecuteTransaction' value with any optional fields omitted.
mkExecuteTransaction
    :: Core.NonEmpty Types.ParameterizedStatement -- ^ 'transactStatements'
    -> ExecuteTransaction
mkExecuteTransaction transactStatements
  = ExecuteTransaction'{transactStatements,
                        clientRequestToken = Core.Nothing}

-- | The list of PartiQL statements representing the transaction to run. 
--
-- /Note:/ Consider using 'transactStatements' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
etTransactStatements :: Lens.Lens' ExecuteTransaction (Core.NonEmpty Types.ParameterizedStatement)
etTransactStatements = Lens.field @"transactStatements"
{-# INLINEABLE etTransactStatements #-}
{-# DEPRECATED transactStatements "Use generic-lens or generic-optics with 'transactStatements' instead"  #-}

-- | Set this value to get remaining results, if @NextToken@ was returned in the statement response. 
--
-- /Note:/ Consider using 'clientRequestToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
etClientRequestToken :: Lens.Lens' ExecuteTransaction (Core.Maybe Types.ClientRequestToken)
etClientRequestToken = Lens.field @"clientRequestToken"
{-# INLINEABLE etClientRequestToken #-}
{-# DEPRECATED clientRequestToken "Use generic-lens or generic-optics with 'clientRequestToken' instead"  #-}

instance Core.ToQuery ExecuteTransaction where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ExecuteTransaction where
        toHeaders ExecuteTransaction{..}
          = Core.pure
              ("X-Amz-Target", "DynamoDB_20120810.ExecuteTransaction")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.0")

instance Core.FromJSON ExecuteTransaction where
        toJSON ExecuteTransaction{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("TransactStatements" Core..= transactStatements),
                  ("ClientRequestToken" Core..=) Core.<$> clientRequestToken])

instance Core.AWSRequest ExecuteTransaction where
        type Rs ExecuteTransaction = ExecuteTransactionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ExecuteTransactionResponse' Core.<$>
                   (x Core..:? "Responses") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkExecuteTransactionResponse' smart constructor.
data ExecuteTransactionResponse = ExecuteTransactionResponse'
  { responses :: Core.Maybe (Core.NonEmpty Types.ItemResponse)
    -- ^ The response to a PartiQL transaction. 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ExecuteTransactionResponse' value with any optional fields omitted.
mkExecuteTransactionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ExecuteTransactionResponse
mkExecuteTransactionResponse responseStatus
  = ExecuteTransactionResponse'{responses = Core.Nothing,
                                responseStatus}

-- | The response to a PartiQL transaction. 
--
-- /Note:/ Consider using 'responses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
etrrsResponses :: Lens.Lens' ExecuteTransactionResponse (Core.Maybe (Core.NonEmpty Types.ItemResponse))
etrrsResponses = Lens.field @"responses"
{-# INLINEABLE etrrsResponses #-}
{-# DEPRECATED responses "Use generic-lens or generic-optics with 'responses' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
etrrsResponseStatus :: Lens.Lens' ExecuteTransactionResponse Core.Int
etrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE etrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
